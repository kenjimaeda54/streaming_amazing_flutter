import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:streaming_amazing_flutter/models/playlist_channel/playlist_channel.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';

class RowItemPlaylist extends StatelessWidget {
  final SnippetPlayList snippet;
  const RowItemPlaylist({super.key, required this.snippet});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            snippet.thumbnails.high.url,
            width: double.infinity,
            height: 180,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          snippet.title,
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 17,
            color: Theme.of(context).primaryColorDark,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          snippet.description,
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 15,
            color: Theme.of(context).colorScheme.surface,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
    ;
  }
}
