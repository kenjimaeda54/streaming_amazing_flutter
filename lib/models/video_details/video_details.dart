import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:streaming_amazing_flutter/models/videos/videos.dart';

part 'video_details.freezed.dart';
part 'video_details.g.dart';

@freezed
class VideoDetails with _$VideoDetails {
  const factory VideoDetails({required List<ItemsVideoDetails> items}) =
      _VideoDetails;

  factory VideoDetails.fromJson(Map<String, Object?> json) =>
      _$VideoDetailsFromJson(json);
}

@freezed
class ItemsVideoDetails with _$ItemsVideoDetails {
  const factory ItemsVideoDetails(
      {required SnippetVideo snippet,
      required StaticsVideoDetails statistics}) = _ItemsVideoDetails;

  factory ItemsVideoDetails.fromJson(Map<String, Object?> json) =>
      _$ItemsVideoDetailsFromJson(json);
}

@freezed
class StaticsVideoDetails with _$StaticsVideoDetails {
  const factory StaticsVideoDetails({required String viewCount}) =
      _StaticsVideoDetails;

  factory StaticsVideoDetails.fromJson(Map<String, Object?> json) =>
      _$StaticsVideoDetailsFromJson(json);
}
