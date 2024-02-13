import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'thumbnails_details.freezed.dart';
part 'thumbnails_details.g.dart';

@freezed
class ThumbnailsDetailsVideo with _$ThumbnailsDetailsVideo {
  const factory ThumbnailsDetailsVideo({required String url}) =
      _ThumbnailsDetailsVideo;

  factory ThumbnailsDetailsVideo.fromJson(Map<String, Object?> json) =>
      _$ThumbnailsDetailsVideoFromJson(json);
}
