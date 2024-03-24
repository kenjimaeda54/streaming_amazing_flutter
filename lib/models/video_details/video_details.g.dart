// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoDetailsImpl _$$VideoDetailsImplFromJson(Map<String, dynamic> json) =>
    _$VideoDetailsImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemsVideoDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoDetailsImplToJson(_$VideoDetailsImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$ItemsVideoDetailsImpl _$$ItemsVideoDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemsVideoDetailsImpl(
      snippet: SnippetVideo.fromJson(json['snippet'] as Map<String, dynamic>),
      statistics: StaticsVideoDetails.fromJson(
          json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemsVideoDetailsImplToJson(
        _$ItemsVideoDetailsImpl instance) =>
    <String, dynamic>{
      'snippet': instance.snippet,
      'statistics': instance.statistics,
    };

_$StaticsVideoDetailsImpl _$$StaticsVideoDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$StaticsVideoDetailsImpl(
      viewCount: json['viewCount'] as String,
    );

Map<String, dynamic> _$$StaticsVideoDetailsImplToJson(
        _$StaticsVideoDetailsImpl instance) =>
    <String, dynamic>{
      'viewCount': instance.viewCount,
    };
