import 'dart:math';
import 'package:eval_ex/built_ins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:streaming_amazing_flutter/bloc/video_details/video_details_bloc.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';
import 'package:streaming_amazing_flutter/widgets/back_button/back_button.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class DetailsVideo extends StatefulWidget {
  final VideosWithChannel videoWithChannel;
  const DetailsVideo({super.key, required this.videoWithChannel});

  static Route<void> route(VideosWithChannel videosWithChannel) {
    return PageRouteBuilder(
        pageBuilder: (_, __, ___) => BlocProvider.value(
              value: VideoDetailsBloc()
                ..add(
                    FetchVideoDetailsEvent(videoId: videosWithChannel.videoId)),
              child: DetailsVideo(videoWithChannel: videosWithChannel),
            ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
        transitionDuration: const Duration(seconds: 1));
  }

  @override
  State<DetailsVideo> createState() => _DetailsVideoState();
}

class _DetailsVideoState extends State<DetailsVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        params: const YoutubePlayerParams(showFullscreenButton: true));
    _controller.loadVideoById(videoId: widget.videoWithChannel.videoId);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    Future.delayed(Duration.zero, () async => await Jiffy.setLocale("pt_BR"));
  }

  String _returnDateFormatted(String date) {
    return Jiffy.parse(date).fromNow();
  }

  String _returnQuantityFormatted(String value) {
    final List<String> symbol = ["", "mil", "mi", "b", "t", "p", "e"];
    final tier = log10(double.parse(value).abs()).toInt() ~/ 3 | 0;

    if (tier == 0) {
      return value;
    }
    final suffix = symbol[tier];
    final scale = pow(10.0, (tier * 3));
    final scaled = double.parse(value) / scale;
    return "${scaled.toStringAsFixed(2)} $suffix";
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoDetailsBloc, VideoDetailsState>(
        builder: (context, state) {
      return switch (state) {
        VideoDetailsStateLoading() => Scaffold(body: Text("Loading")),
        VideoDetailsStateLoaded() => YoutubePlayerScaffold(
            controller: _controller,
            aspectRatio: 1 / 1,
            defaultOrientations: const [DeviceOrientation.portraitUp],
            fullscreenOrientations: const [
              DeviceOrientation.landscapeRight,
              DeviceOrientation.landscapeLeft,
            ],
            autoFullScreen: false,
            enableFullScreenOnVerticalDrag: true,
            builder: (context, player) => Scaffold(
                  extendBodyBehindAppBar: true,
                  appBar: AppBar(
                    forceMaterialTransparency: true,
                    elevation: 0,
                    toolbarHeight: 35,
                    backgroundColor: Colors.transparent,
                    leading: CustomBackButton(
                      actionTapButton: () => Navigator.of(context).pop(),
                    ),
                  ),
                  body: SingleChildScrollView(
                    physics:
                        const ScrollPhysics(parent: ClampingScrollPhysics()),
                    padding: const EdgeInsets.only(bottom: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        player,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                widget.videoWithChannel.titleVideo,
                                maxLines: 2,
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Wrap(
                                  spacing: 30,
                                  children: [
                                    Text(
                                      _returnDateFormatted(state.data.items
                                          .first.snippet.publishedAt),
                                      style: const TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      _returnQuantityFormatted(state.data.items
                                          .first.statistics.viewCount),
                                      style: const TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      state.data.items.first.snippet
                                          .channelTitle,
                                      style: const TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Wrap(
                                spacing: 20,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        widget.videoWithChannel
                                            .thumbProfileChannel,
                                        width: 60,
                                        height: 60,
                                        filterQuality: FilterQuality.high,
                                      )),
                                  Text(
                                    state.data.items.first.snippet.channelTitle,
                                    style: const TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    _returnQuantityFormatted(widget
                                        .videoWithChannel
                                        .subscriberCountChannel),
                                    style: const TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                state.data.items.first.snippet.description,
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  height: 1.7,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
        VideoDetailsStateError() => Text("error"),
      };
    });
  }
}
