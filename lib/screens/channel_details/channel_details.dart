import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/channel/channel_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/playlist_videos_channel/playlist_videos_channel_bloc.dart';
import 'package:streaming_amazing_flutter/models/subscription/subscription.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';
import 'package:streaming_amazing_flutter/screens/channel_details/widget/row_item_playlist.dart';
import 'package:streaming_amazing_flutter/screens/channel_details/widget/skeleton_channel_details.body.dart';
import 'package:streaming_amazing_flutter/screens/channel_details/widget/skeleton_channel_details.dart';
import 'package:streaming_amazing_flutter/screens/details_video/details_video.dart';
import 'package:streaming_amazing_flutter/screens/details_video/widget/skeleton_details_video.dart';
import 'package:streaming_amazing_flutter/widgets/back_button/back_button.dart';

class ChannelDetails extends StatelessWidget {
  final SnippetSubscription snippetSubscription;
  const ChannelDetails({super.key, required this.snippetSubscription});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChannelBloc, ChannelState>(
        builder: (context, channelState) {
      return switch (channelState) {
        ChannelStateLoading() => const SkeletonDetailsVideo(),
        ChannelStateLoaded() => Scaffold(
            appBar: PreferredSize(
              preferredSize:
                  Size.fromHeight(MediaQuery.of(context).size.height * 0.09),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: CustomBackButton(
                      actionTapButton: () => Navigator.of(context).pop(),
                    ),
                    centerTitle: true,
                    title: Wrap(
                      spacing: 20,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            channelState
                                .data.items.first.snippet.thumbnails.medium.url,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        Text(
                          channelState.data.items.first.snippet.title,
                          style: const TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
            ),
            body: BlocBuilder<PlaylistVideosChannelBloc,
                PlayListVideosChannelState>(
              builder: (context, playlistState) {
                return switch (playlistState) {
                  PlayListVideosChannelStateLoading() =>
                    const SkeletonChannelDetailsBody(),
                  PlayListVideosChannelLoaded() => ListView.builder(
                      itemCount: playlistState.data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(
                                bottom: 25, right: 13, left: 13),
                            child: InkWell(
                              onTap: () {
                                final videosWithChannel = VideosWithChannel(
                                    channelId: snippetSubscription
                                        .resourceId.channelId,
                                    descriptionVideo: channelState
                                        .data.items.first.snippet.description,
                                    id: playlistState.data[index].id,
                                    publishedVideo: playlistState
                                        .data[index].snippet.publishedAt,
                                    subscriberCountChannel: channelState.data
                                        .items.first.statistics.subscriberCount,
                                    thumbVideo: playlistState.data[index]
                                        .snippet.thumbnails.high.url,
                                    thumbProfileChannel:
                                        snippetSubscription.thumbnails.high.url,
                                    titleVideo:
                                        playlistState.data[index].snippet.title,
                                    videoId: playlistState.data[index].snippet
                                        .resourceId.videoId);

                                Navigator.of(context).push(
                                    DetailsVideo.route(videosWithChannel));
                              },
                              child: RowItemPlaylist(
                                snippet: playlistState.data[index].snippet,
                              ),
                            ));
                      }),
                  PlayListVideosChannelError() => Text("error"),
                };
              },
            ),
          ),
        ChannelStateError() => const Scaffold(
            body: Text("error"),
          ),
      };
    });
  }
}
