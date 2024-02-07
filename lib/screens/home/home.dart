import 'package:flutter/material.dart';
import 'package:streaming_amazing_flutter/mock/mock_channel_subscription.dart';
import 'package:streaming_amazing_flutter/mock/mock_video_with_channel.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_channel_subscription.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_videos.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.only(left: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    "https://github.com/kenjimaeda54.png",
                    fit: BoxFit.fill,
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bem vindo de volta 👋",
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 16),
                    ),
                    Text(
                      "Kenji",
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  itemCount: mockChannelSubscription.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          right: 10), //padding precisa estar fora
                      child: RowChannelSubscription(
                          title: mockChannelSubscription[index]
                              .items
                              .snippet
                              .title,
                          uri: mockChannelSubscription[index]
                              .items
                              .snippet
                              .thumbnails
                              .medium
                              .url),
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: mockVideoWithChannel.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(bottom: 25, right: 13),
                        child: RowVideos(video: mockVideoWithChannel[index]));
                  }),
            )
          ],
        ),
      ),
    ));
  }
}
