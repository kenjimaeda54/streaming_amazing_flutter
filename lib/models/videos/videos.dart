import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:streaming_amazing_flutter/models/thumbnails/thumbnails.dart';

part 'videos.freezed.dart';
part 'videos.g.dart';

@freezed
class Video with _$Video {
  const factory Video({required List<ItemsVideo> items}) = _Video;

  factory Video.fromJson(Map<String, Object?> json) => _$VideoFromJson(json);
}

@freezed
class ItemsVideo with _$ItemsVideo {
  const factory ItemsVideo(
      {required SnippetVideo snippet, required IdVideo id}) = _ItemsVideo;

  factory ItemsVideo.fromJson(Map<String, Object?> json) =>
      _$ItemsVideoFromJson(json);
}

@freezed
class SnippetVideo with _$SnippetVideo {
  const factory SnippetVideo(
      {required String publishedAt,
      required String title,
      required String description,
      required ThumbnailsVideo thumbnails,
      required String channelTitle,
      required String channelId}) = _SnippetVideo;

  factory SnippetVideo.fromJson(Map<String, Object?> json) =>
      _$SnippetVideoFromJson(json);
}

@freezed
class IdVideo with _$IdVideo {
  const factory IdVideo({required String kind, required String videoId}) =
      _IdVideo;

  factory IdVideo.fromJson(Map<String, Object?> json) =>
      _$IdVideoFromJson(json);
}
