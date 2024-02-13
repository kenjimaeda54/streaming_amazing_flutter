// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemsVideo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$ItemsVideoImpl _$$ItemsVideoImplFromJson(Map<String, dynamic> json) =>
    _$ItemsVideoImpl(
      snippet: SnippetVideo.fromJson(json['snippet'] as Map<String, dynamic>),
      id: IdVideo.fromJson(json['id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemsVideoImplToJson(_$ItemsVideoImpl instance) =>
    <String, dynamic>{
      'snippet': instance.snippet,
      'id': instance.id,
    };

_$SnippetVideoImpl _$$SnippetVideoImplFromJson(Map<String, dynamic> json) =>
    _$SnippetVideoImpl(
      publishedAt: json['publishedAt'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnails:
          ThumbnailsVideo.fromJson(json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String,
      channelId: json['channelId'] as String,
    );

Map<String, dynamic> _$$SnippetVideoImplToJson(_$SnippetVideoImpl instance) =>
    <String, dynamic>{
      'publishedAt': instance.publishedAt,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'channelTitle': instance.channelTitle,
      'channelId': instance.channelId,
    };

_$IdVideoImpl _$$IdVideoImplFromJson(Map<String, dynamic> json) =>
    _$IdVideoImpl(
      kind: json['kind'] as String,
      videoId: json['videoId'] as String,
    );

Map<String, dynamic> _$$IdVideoImplToJson(_$IdVideoImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'videoId': instance.videoId,
    };
