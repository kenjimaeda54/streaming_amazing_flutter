import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_videos.dart';

class SkeletonVideosWithChannel extends StatelessWidget {
  const SkeletonVideosWithChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(bottom: 25, right: 13),
              child: Skeletonizer(
                enabled: true,
                child: RowVideos(
                    video: VideosWithChannel(
                  channelId: "fsfsfsfs",
                  descriptionVideo: "fdfdfdfdfd",
                  publishedVideo: "fdfdfdfdfd",
                  subscriberCountChannel: "fdfdfdfdfdfdfdfd",
                  id: "fdfdfdfdfdfd",
                  thumbProfileChannel: "https://github.com/kenjimaeda54.png",
                  thumbVideo: "https://github.com/kenjimaeda54.png",
                  titleVideo:
                      "fdfdfdfdfdfdfsoifnosnfosnfsonfosfnosfnosnfosnfosnfosnfos",
                  videoId: "ererererererer",
                )),
              ));
        });
  }
}
