// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThumbnailsVideoImpl _$$ThumbnailsVideoImplFromJson(
        Map<String, dynamic> json) =>
    _$ThumbnailsVideoImpl(
      medium: ThumbnailsDetailsVideo.fromJson(
          json['medium'] as Map<String, dynamic>),
      high:
          ThumbnailsDetailsVideo.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ThumbnailsVideoImplToJson(
        _$ThumbnailsVideoImpl instance) =>
    <String, dynamic>{
      'medium': instance.medium,
      'high': instance.high,
    };
