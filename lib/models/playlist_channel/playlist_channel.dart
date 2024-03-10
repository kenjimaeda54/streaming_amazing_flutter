import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:streaming_amazing_flutter/models/thumbnails/thumbnails.dart';

part 'playlist_channel.freezed.dart';
part 'playlist_channel.g.dart';

@freezed
class PlayListChannel with _$PlayListChannel {
  const factory PlayListChannel({required List<ItemsPlayList> items}) =
      _PlayListChannel;

  factory PlayListChannel.fromJson(Map<String, Object?> json) =>
      _$PlayListChannelFromJson(json);
}

@freezed
class ItemsPlayList with _$ItemsPlayList {
  const factory ItemsPlayList(
      {required SnippetPlayList snippet, required String id}) = _ItemsPlayList;

  factory ItemsPlayList.fromJson(Map<String, Object?> json) =>
      _$ItemsPlayListFromJson(json);
}

@freezed
class SnippetPlayList with _$SnippetPlayList {
  const factory SnippetPlayList(
      {required String title,
      required String description,
      required String publishedAt,
      required ThumbnailsVideo thumbnails,
      required String channelTitle,
      required ResourceIdPlayList resourceId}) = _SnippetPlayList;

  factory SnippetPlayList.fromJson(Map<String, Object?> json) =>
      _$SnippetPlayListFromJson(json);
}

@freezed
class ResourceIdPlayList with _$ResourceIdPlayList {
  const factory ResourceIdPlayList({required String videoId}) =
      _ResourceIdPlayList;

  factory ResourceIdPlayList.fromJson(Map<String, Object?> json) =>
      _$ResourceIdPlayListFromJson(json);
}
