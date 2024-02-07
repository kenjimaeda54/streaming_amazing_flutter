import 'package:flutter/material.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';

class RowVideos extends StatelessWidget {
  final VideosWithChannel video;
  const RowVideos({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            video.thumbVideo,
            width: double.infinity,
            height: 180,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                video.thumbProfileChannel,
                width: 60,
                height: 60,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              video.titleVideo,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 17,
                color: Theme.of(context).primaryColorDark,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        )
      ],
    );
  }
}
