import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/google_sign_in/google_sign_in_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/subscription/subscription_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/videos_with_channel/videos_with_channel_bloc.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_channel_subscription.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_videos.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideosWithChannelBloc _videosBloc;
  late SubscriptionBloc _subscriptionBloc;

  @override
  void initState() {
    _videosBloc = BlocProvider.of(context);
    _videosBloc.add(VideosFetchDataEvent());
    _subscriptionBloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

//quando um widget depended de outro
//https://stackoverflow.com/questions/64482468/how-to-access-data-in-blocs-state-from-another-bloc/72528313#72528313
//para chamar o subscriiption passando access token
  @override
  Widget build(BuildContext context) {
    final user = context.select((GoogleSignInBloc bloc) => bloc.state.user);
    _subscriptionBloc
        .add(SubscriptionFetchDataEvent(accessToken: user.accessToken));

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
                child: BlocConsumer<SubscriptionBloc, SubscriptionState>(
                  builder: (context, state) {
                    if (state is SubscriptionLoading) {
                      return const Text("Loading");
                    } else if (state is SubscriptionLoaded) {
                      return ListView.builder(
                          itemCount: state.data.items.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  right: 10), //padding precisa estar fora
                              child: RowChannelSubscription(
                                  title: state.data.items[index].snippet.title,
                                  uri: state.data.items[index].snippet
                                      .thumbnails.medium.url),
                            );
                          });
                    } else {
                      return Text("error");
                    }
                  },
                  listener: (BuildContext context, SubscriptionState state) {},
                )),
            Expanded(
              child:
                  BlocConsumer<VideosWithChannelBloc, VideosWithChannelState>(
                builder: (context, state) {
                  if (state is VideosWithChannelStateLoading) {
                    return const Text("carregando");
                  } else if (state is VideosWithChannelLoaded) {
                    return ListView.builder(
                        itemCount: state.data.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 25, right: 13),
                              child: RowVideos(video: state.data[index]));
                        });
                  } else {
                    return Text("error");
                  }
                },
                listener: (context, state) {},
              ),
            )
          ],
        ),
      ),
    ));
  }
}
