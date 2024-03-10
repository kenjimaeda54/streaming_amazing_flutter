import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/videos_with_channel/videos_with_channel_bloc.dart';
import 'package:streaming_amazing_flutter/screens/home/widget/row_videos.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 13),
            child: BlocBuilder<VideosWithChannelBloc, VideosWithChannelState>(
              builder: (context, state) {
                return switch (state) {
                  VideosStateLoading() => const Text("loading"),
                  VideosWithChannelLoaded() => const Text(''),
                  VideosWithLiveAndChannelLoaded() => ListView.builder(
                      itemCount: state.data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding:
                                const EdgeInsets.only(bottom: 25, right: 13),
                            child: RowVideos(video: state.data[index]));
                      }),
                  // TODO: Handle this case.
                  VideosStateError() => Text("error"),
                };
              },
            ),
          )),
    );
  }
}
