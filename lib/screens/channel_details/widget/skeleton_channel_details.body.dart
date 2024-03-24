import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:streaming_amazing_flutter/models/playlist_channel/playlist_channel.dart';
import 'package:streaming_amazing_flutter/models/thumbnails/thumbnails.dart';
import 'package:streaming_amazing_flutter/models/thumbnails_details/thumbnails_details.dart';
import 'package:streaming_amazing_flutter/screens/channel_details/widget/row_item_playlist.dart';

class SkeletonChannelDetailsBody extends StatelessWidget {
  const SkeletonChannelDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Skeletonizer(
        enabled: true,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                  padding: EdgeInsets.only(bottom: 25, right: 13, left: 13),
                  child: RowItemPlaylist(
                    snippet: SnippetPlayList(
                        title: "fosnfosnfosnfonsofsnfonsof",
                        description: "fsopfmnosnfsofnsonfosnfosnfso",
                        publishedAt: "2323./23232",
                        thumbnails: ThumbnailsVideo(
                          medium: ThumbnailsDetails(
                              url: "https://github.com/kenjimaeda.png"),
                          high: ThumbnailsDetails(
                              url: "https://github.com/kenjimaeda.png"),
                        ),
                        channelTitle: "dfondfondofnd",
                        resourceId:
                            ResourceIdPlayList(videoId: "fsonfosnfosn")),
                  ));
            }),
      ),
    );
  }
}
