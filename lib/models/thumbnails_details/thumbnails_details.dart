import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'thumbnails_details.freezed.dart';
part 'thumbnails_details.g.dart';

@freezed
class ThumbnailsDetails with _$ThumbnailsDetails {
  const factory ThumbnailsDetails({required String url}) = _ThumbnailsDetails;

  factory ThumbnailsDetails.fromJson(Map<String, Object?> json) =>
      _$ThumbnailsDetailsFromJson(json);
}
