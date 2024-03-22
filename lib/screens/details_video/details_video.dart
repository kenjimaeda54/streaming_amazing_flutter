import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';
import 'package:streaming_amazing_flutter/widgets/back_button/back_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailsVideo extends StatefulWidget {
  final VideosWithChannel videoWithChannel;
  const DetailsVideo({super.key, required this.videoWithChannel});

  static Route<void> route(VideosWithChannel videosWithChannel) {
    return MaterialPageRoute(
        builder: (_) => DetailsVideo(videoWithChannel: videosWithChannel));
  }

  @override
  State<DetailsVideo> createState() => _DetailsVideoState();
}

class _DetailsVideoState extends State<DetailsVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        YoutubePlayerController(initialVideoId: widget.videoWithChannel.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YoutubePlayer(
              controller: _controller,
              aspectRatio: 1 / 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.videoWithChannel.titleVideo,
                    maxLines: 2,
                    style: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      children: [
                        Text(
                          widget.videoWithChannel.subscriberCountChannel,
                          style: const TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          widget.videoWithChannel.publishedVideo,
                          style: const TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          widget.videoWithChannel.titleVideo,
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
                            widget.videoWithChannel.thumbProfileChannel,
                            width: 60,
                            height: 60,
                            filterQuality: FilterQuality.high,
                          )),
                      Text(
                        "Sara ",
                        style: const TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.videoWithChannel.subscriberCountChannel,
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
                    widget.videoWithChannel.descriptionVideo,
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
        ));
  }
}
