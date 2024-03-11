import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/google_sign_in/google_sign_in_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/live_videos_channel/live_videos_channel_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/subscription/subscription_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/videos_with_channel/videos_with_channel_bloc.dart';
import 'package:streaming_amazing_flutter/routes/bottom_navigation.dart';
import 'package:streaming_amazing_flutter/screens/home/home.dart';
import 'package:streaming_amazing_flutter/screens/live/live.dart';
import 'package:streaming_amazing_flutter/screens/profile/profile.dart';

class AppRoutes extends StatefulWidget {
  const AppRoutes({super.key});

  @override
  State<AppRoutes> createState() => _AppRoutesState();

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const AppRoutes());
  }
}

class _AppRoutesState extends State<AppRoutes> {
  var indexSelected = 0;

  handleTabSelected(int index) {
    setState(() {
      indexSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = context.select((GoogleSignInBloc bloc) => bloc.state.user);

//quando tiver varios providers usar o multiBlocProvider
    final screenBottomNavigation = [
      {
        "icon": "assets/images/home.png",
        "screen": MultiBlocProvider(
          providers: [
            BlocProvider<VideosWithChannelBloc>.value(
                value: VideosWithChannelBloc()..add(VideosFetchDataEvent())),
            BlocProvider<SubscriptionBloc>.value(
              value: SubscriptionBloc()
                ..add(
                    SubscriptionFetchDataEvent(accessToken: user.accessToken)),
            )
          ],
          child: const HomeScreen(),
        )
      },
      {
        "icon": "assets/images/live.png",
        "screen": BlocProvider<LiveVideosChannelBloc>.value(
          value: LiveVideosChannelBloc()
            ..add(const FetchLiveVideosChannelEvent()),
          child: const LiveScreen(),
        )
      },
      {"icon": "assets/images/profile.png", "screen": const ProfileScreen()}
    ];

    return Scaffold(
      body: Stack(children: [
        screenBottomNavigation[indexSelected]['screen'] as Widget,
        BottomNavigation(
          indexBottomSelected: indexSelected,
          action: handleTabSelected,
          screenBottomNavigation: screenBottomNavigation,
        )
      ]),
    );
  }
}
