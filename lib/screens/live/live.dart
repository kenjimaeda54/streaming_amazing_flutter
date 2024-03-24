import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/live_videos_channel/live_videos_channel_bloc.dart';
import 'package:streaming_amazing_flutter/screens/details_video/details_video.dart';
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
            child: BlocBuilder<LiveVideosChannelBloc, LiveVideosChannelState>(
              builder: (context, state) {
                return switch (state) {
                  LiveVideosChannelStateLoading() => const Text("loading"),
                  LiveVideosChannelStateLoaded() => ListView.builder(
                      itemCount: state.data.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => Navigator.of(context)
                              .push(DetailsVideo.route(state.data[index])),
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 25, right: 13),
                              child: RowVideos(video: state.data[index])),
                        );
                      }),
                  LiveVideosChannelStateError() => throw UnimplementedError(),
                };
              },
            ),
          )),
    );
  }
}
