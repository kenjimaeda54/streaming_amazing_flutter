import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_channel_subscription.dart';

class SkeletonSubscription extends StatelessWidget {
  const SkeletonSubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Skeletonizer(
            enabled: true,
            child: Padding(
              padding: EdgeInsets.only(right: 10), //padding precisa estar fora
              child: RowChannelSubscription(
                  title: "fsfsfsdsd",
                  uri: "https://github.com/kenjimaeda54.png"),
            ),
          );
        });
  }
}
