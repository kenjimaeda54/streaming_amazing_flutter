import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/google_sign_in/google_sign_in_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/subscription/subscription_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/videos_with_channel/videos_with_channel_bloc.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/content_subscription.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/content_videos_with_channel.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/skeleton_subscription.dart';
import 'package:streaming_amazing_flutter/widgets/skeleton/skeleton_videos_with_channel_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((GoogleSignInBloc bloc) => bloc.state.user);

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
                    user.userDetails.photo ??
                        "https://github.com/kenjimaeda.png",
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
                      user.userDetails.givenName ?? "",
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
                child: BlocBuilder<SubscriptionBloc, SubscriptionState>(
                  builder: (context, state) {
                    return switch (state) {
                      SubscriptionLoading() => const SkeletonSubscription(),
                      SubscriptionLoaded() =>
                        ContentSubscription(data: state.data),
                      SubscriptionError() => const Text("error"),
                    };
                  },
                )),
            Expanded(
              child: BlocBuilder<VideosWithChannelBloc, VideosWithChannelState>(
                builder: (context, state) {
                  return switch (state) {
                    VideosStateLoading() => const SkeletonVideosWithChannel(),
                    VideosWithChannelLoaded() =>
                      ContentVideosWithChannel(data: state.data),
                    VideosStateError() => Text("error"),
                  };
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
