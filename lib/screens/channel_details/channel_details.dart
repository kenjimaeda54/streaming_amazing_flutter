import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/playlist_videos_channel/playlist_videos_channel_bloc.dart';
import 'package:streaming_amazing_flutter/models/subscription/subscription.dart';
import 'package:streaming_amazing_flutter/screens/channel_details/widget/row_item_playlist.dart';
import 'package:streaming_amazing_flutter/widgets/back_button/back_button.dart';

class ChannelDetails extends StatelessWidget {
  final SnippetSubscription channel;
  const ChannelDetails({super.key, required this.channel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.09),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: CustomBackButton(
              actionTapButton: () => Navigator.of(context).pop(),
            ),
            centerTitle: true,
            title: Text(
              channel.title,
              style: const TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: BlocBuilder<PlaylistVideosChannelBloc, PlayListVideosChannelState>(
        builder: (context, state) {
          return switch (state) {
            PlayListVideosChannelStateLoading() => Text("loading"),
            PlayListVideosChannelLoaded() => ListView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 25, right: 13, left: 13),
                      child: RowItemPlaylist(
                        snippet: state.data[index].snippet,
                      ));
                }),
            PlayListVideosChannelError() => Text("error"),
          };
        },
      ),
    );
  }
}
