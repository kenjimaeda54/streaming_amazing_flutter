import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:streaming_amazing_flutter/models/thumbnails_details/thumbnails_details.dart';

part 'thumbnails.freezed.dart';
part 'thumbnails.g.dart';

@freezed
class ThumbnailsVideo with _$ThumbnailsVideo {
  const factory ThumbnailsVideo(
      {required ThumbnailsDetails medium,
      required ThumbnailsDetails high}) = _ThumbnailsVideo;

  factory ThumbnailsVideo.fromJson(Map<String, Object?> json) =>
      _$ThumbnailsVideoFromJson(json);
}
