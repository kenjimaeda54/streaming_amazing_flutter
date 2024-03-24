import 'package:flutter/material.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';
import 'package:streaming_amazing_flutter/screens/details_video/details_video.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_videos.dart';

class ContentVideosWithChannel extends StatelessWidget {
  final List<VideosWithChannel> data;
  const ContentVideosWithChannel({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () =>
                Navigator.of(context).push(DetailsVideo.route(data[index])),
            child: Padding(
                padding: const EdgeInsets.only(bottom: 25, right: 13),
                child: RowVideos(video: data[index])),
          );
        });
  }
}
