import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/channel/channel_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/playlist_videos_channel/playlist_videos_channel_bloc.dart';
import 'package:streaming_amazing_flutter/models/subscription/subscription.dart';
import 'package:streaming_amazing_flutter/screens/channel_details/channel_details.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_channel_subscription.dart';

class ContentSubscription extends StatelessWidget {
  final Subscription data;
  const ContentSubscription({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(right: 10), //padding precisa estar fora
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => MultiBlocProvider(
                            providers: [
                              BlocProvider.value(
                                  value: PlaylistVideosChannelBloc()
                                    ..add(PlayListVideosFetchDataEvent(
                                        channelId: data.items[index].snippet
                                            .resourceId.channelId))),
                              BlocProvider.value(
                                  value: ChannelBloc()
                                    ..add(FetchChannelEvent(
                                        channelId: data.items[index].snippet
                                            .resourceId.channelId))),
                            ],
                            child: ChannelDetails(
                              snippetSubscription: data.items[index].snippet,
                            ),
                          ),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));

                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                      transitionDuration: const Duration(seconds: 1))),
              child: RowChannelSubscription(
                  title: data.items[index].snippet.title,
                  uri: data.items[index].snippet.thumbnails.medium.url),
            ),
          );
        });
  }
}
