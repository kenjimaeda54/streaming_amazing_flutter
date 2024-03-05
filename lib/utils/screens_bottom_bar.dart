import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/subscription/subscription_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/videos_with_channel/videos_with_channel_bloc.dart';
import 'package:streaming_amazing_flutter/screens/home/home.dart';
import 'package:streaming_amazing_flutter/screens/live/live.dart';
import 'package:streaming_amazing_flutter/screens/profile/profile.dart';

final screenBottomNavigation = [
  {
    "icon": "assets/images/home.png",
    "screen": BlocProvider<VideosWithChannelBloc>.value(
        value: VideosWithChannelBloc(),
        child: BlocProvider<SubscriptionBloc>.value(
          value: SubscriptionBloc(),
          child: const HomeScreen(),
        ))
  },
  {
    "icon": "assets/images/live.png",
    "screen": BlocProvider<VideosWithChannelBloc>.value(
      value: VideosWithChannelBloc(),
      child: const LiveScreen(),
    )
  },
  {"icon": "assets/images/profile.png", "screen": const ProfileScreen()}
];
