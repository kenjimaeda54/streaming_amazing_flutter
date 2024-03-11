import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/google_sign_in/google_sign_in_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/playlist_videos_channel/playlist_videos_channel_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/subscription/subscription_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/videos_with_channel/videos_with_channel_bloc.dart';
import 'package:streaming_amazing_flutter/screens/channel_details/channel_details.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_channel_subscription.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_videos.dart';

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
                      SubscriptionLoading() => const Text("loading"),
                      SubscriptionLoaded() => ListView.builder(
                          itemCount: state.data.items.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  right: 10), //padding precisa estar fora
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        pageBuilder: (_, __, ___) =>
                                            BlocProvider.value(
                                              value:
                                                  PlaylistVideosChannelBloc(),
                                              child: ChannelDetails(
                                                channel: state
                                                    .data.items[index].snippet,
                                              ),
                                            ),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          const begin = Offset(0.0, 1.0);
                                          const end = Offset.zero;
                                          const curve = Curves.ease;

                                          var tween = Tween(
                                                  begin: begin, end: end)
                                              .chain(CurveTween(curve: curve));

                                          return SlideTransition(
                                            position: animation.drive(tween),
                                            child: child,
                                          );
                                        },
                                        transitionDuration:
                                            const Duration(seconds: 1))),
                                child: RowChannelSubscription(
                                    title:
                                        state.data.items[index].snippet.title,
                                    uri: state.data.items[index].snippet
                                        .thumbnails.medium.url),
                              ),
                            );
                          }),
                      SubscriptionError() => const Text("error"),
                    };
                  },
                )),
            Expanded(
              child: BlocBuilder<VideosWithChannelBloc, VideosWithChannelState>(
                builder: (context, state) {
                  return switch (state) {
                    VideosStateLoading() => const Text("Loading"),
                    VideosWithChannelLoaded() => ListView.builder(
                        itemCount: state.data.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 25, right: 13),
                              child: RowVideos(video: state.data[index]));
                        }),
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


  // if (state is SubscriptionLoading) {
  //                     return const Text("Loading");
  //                   } else if (state is SubscriptionLoaded) {
  //                     return ListView.builder(
  //                         itemCount: state.data.items.length,
  //                         scrollDirection: Axis.horizontal,
  //                         itemBuilder: (context, index) {
  //                           return Padding(
  //                             padding: const EdgeInsets.only(
  //                                 right: 10), //padding precisa estar fora
  //                             child: InkWell(
  //                               onTap: () => Navigator.push(
  //                                   context,
  //                                   PageRouteBuilder(
  //                                       pageBuilder: (_, __, ___) =>
  //                                           BlocProvider.value(
  //                                             value:
  //                                                 PlaylistVideosChannelBloc(),
  //                                             child: ChannelDetails(
  //                                               channel: state
  //                                                   .data.items[index].snippet,
  //                                             ),
  //                                           ),
  //                                       transitionsBuilder: (context, animation,
  //                                           secondaryAnimation, child) {
  //                                         const begin = Offset(0.0, 1.0);
  //                                         const end = Offset.zero;
  //                                         const curve = Curves.ease;

  //                                         var tween = Tween(
  //                                                 begin: begin, end: end)
  //                                             .chain(CurveTween(curve: curve));

  //                                         return SlideTransition(
  //                                           position: animation.drive(tween),
  //                                           child: child,
  //                                         );
  //                                       },
  //                                       transitionDuration:
  //                                           const Duration(seconds: 1))),
  //                               child: RowChannelSubscription(
  //                                   title:
  //                                       state.data.items[index].snippet.title,
  //                                   uri: state.data.items[index].snippet
  //                                       .thumbnails.medium.url),
  //                             ),
  //                           );
  //                         });
  //                   } else {
  //                     return Text("error");
  //                   }


//  if (state is VideosStateLoading) {
//                     return const Text("carregando");
//                   } else if (state is VideosWithChannelLoaded) {
//                     return ListView.builder(
//                         itemCount: state.data.length,
//                         itemBuilder: (context, index) {
//                           return Padding(
//                               padding:
//                                   const EdgeInsets.only(bottom: 25, right: 13),
//                               child: RowVideos(video: state.data[index]));
//                         });
//                   } else {
//                     return Text("error");
//                   }