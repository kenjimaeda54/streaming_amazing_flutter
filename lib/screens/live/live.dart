import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/videos_with_channel/videos_with_channel_bloc.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_videos.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  late VideosWithChannelBloc _videosBloc;

  @override
  void initState() {
    _videosBloc = BlocProvider.of(context);
    _videosBloc.add(VideosWithLiveFetchDataEvent());
    super.initState();
  }

//por algum motivo precisa o dispose
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 13),
            child: BlocConsumer<VideosWithChannelBloc, VideosWithChannelState>(
              builder: (context, state) {
                if (state is VideosWithChannelStateLoading) {
                  return const Text("carregando");
                } else if (state is VideosWithLiveAndChannelLoaded) {
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
          )),
    );
  }
}
