import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:streaming_amazing_flutter/models/playlist_channel/playlist_channel.dart';
import 'package:streaming_amazing_flutter/models/thumbnails/thumbnails.dart';
import 'package:streaming_amazing_flutter/models/thumbnails_details/thumbnails_details.dart';
import 'package:streaming_amazing_flutter/screens/channel_details/widget/row_item_playlist.dart';
import 'package:streaming_amazing_flutter/widgets/back_button/back_button.dart';

class SkeletonChannelDetails extends StatelessWidget {
  const SkeletonChannelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Scaffold(
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
                title: Wrap(
                  spacing: 20,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://github.com/kenjimaeda54.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const Text(
                      "fosfnosnfos",
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                  padding: EdgeInsets.only(bottom: 25, right: 13, left: 13),
                  child: RowItemPlaylist(
                    snippet: SnippetPlayList(
                        title: "fsonfsofns",
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
