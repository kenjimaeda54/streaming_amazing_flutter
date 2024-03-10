// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayListChannelImpl _$$PlayListChannelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlayListChannelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemsPlayList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlayListChannelImplToJson(
        _$PlayListChannelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$ItemsPlayListImpl _$$ItemsPlayListImplFromJson(Map<String, dynamic> json) =>
    _$ItemsPlayListImpl(
      snippet:
          SnippetPlayList.fromJson(json['snippet'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$ItemsPlayListImplToJson(_$ItemsPlayListImpl instance) =>
    <String, dynamic>{
      'snippet': instance.snippet,
      'id': instance.id,
    };

_$SnippetPlayListImpl _$$SnippetPlayListImplFromJson(
        Map<String, dynamic> json) =>
    _$SnippetPlayListImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      publishedAt: json['publishedAt'] as String,
      thumbnails:
          ThumbnailsVideo.fromJson(json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String,
      resourceId: ResourceIdPlayList.fromJson(
          json['resourceId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SnippetPlayListImplToJson(
        _$SnippetPlayListImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'publishedAt': instance.publishedAt,
      'thumbnails': instance.thumbnails,
      'channelTitle': instance.channelTitle,
      'resourceId': instance.resourceId,
    };

_$ResourceIdPlayListImpl _$$ResourceIdPlayListImplFromJson(
        Map<String, dynamic> json) =>
    _$ResourceIdPlayListImpl(
      videoId: json['videoId'] as String,
    );

Map<String, dynamic> _$$ResourceIdPlayListImplToJson(
        _$ResourceIdPlayListImpl instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
    };
