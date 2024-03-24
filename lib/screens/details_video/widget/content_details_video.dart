import 'dart:math';

import 'package:eval_ex/built_ins.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:streaming_amazing_flutter/models/video_details/video_details.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';
import 'package:streaming_amazing_flutter/widgets/back_button/back_button.dart';

class ContentDetailsVideo extends StatelessWidget {
  final VideoDetails data;
  final Widget player;
  final VideosWithChannel videoWithChannel;
  const ContentDetailsVideo(
      {super.key,
      required this.data,
      required this.player,
      required this.videoWithChannel});

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
      body: SingleChildScrollView(
        physics: const ScrollPhysics(parent: ClampingScrollPhysics()),
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
                    videoWithChannel.titleVideo,
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
                          _returnDateFormatted(
                              data.items.first.snippet.publishedAt),
                          style: const TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          _returnQuantityFormatted(
                              data.items.first.statistics.viewCount),
                          style: const TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          data.items.first.snippet.channelTitle,
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
                            videoWithChannel.thumbProfileChannel,
                            width: 60,
                            height: 60,
                            filterQuality: FilterQuality.high,
                          )),
                      Text(
                        data.items.first.snippet.channelTitle,
                        style: const TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        _returnQuantityFormatted(
                            videoWithChannel.subscriberCountChannel),
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
                    data.items.first.snippet.description,
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
    );
  }
}
