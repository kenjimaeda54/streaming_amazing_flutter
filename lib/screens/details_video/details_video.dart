import 'dart:math';
import 'package:eval_ex/built_ins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:streaming_amazing_flutter/bloc/video_details/video_details_bloc.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';
import 'package:streaming_amazing_flutter/screens/details_video/widget/content_details_video.dart';
import 'package:streaming_amazing_flutter/screens/details_video/widget/skeleton_details_video.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoDetailsBloc, VideoDetailsState>(
        builder: (context, state) {
      return switch (state) {
        VideoDetailsStateLoading() => const SkeletonDetailsVideo(),
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
            builder: (context, player) => ContentDetailsVideo(
                data: state.data,
                player: player,
                videoWithChannel: widget.videoWithChannel)),
        VideoDetailsStateError() => Text("error"),
      };
    });
  }
}
