// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelImpl _$$ChannelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ChannelItems.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$ChannelItemsImpl _$$ChannelItemsImplFromJson(Map<String, dynamic> json) =>
    _$ChannelItemsImpl(
      id: json['id'] as String,
      snippet: Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
      statistics:
          Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChannelItemsImplToJson(_$ChannelItemsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'snippet': instance.snippet,
      'statistics': instance.statistics,
    };

_$SnippetImpl _$$SnippetImplFromJson(Map<String, dynamic> json) =>
    _$SnippetImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      customUrl: json['customUrl'] as String,
      publishedAt: json['publishedAt'] as String,
      thumbnails:
          ThumbnailsVideo.fromJson(json['thumbnails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SnippetImplToJson(_$SnippetImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'customUrl': instance.customUrl,
      'publishedAt': instance.publishedAt,
      'thumbnails': instance.thumbnails,
    };

_$StatisticsImpl _$$StatisticsImplFromJson(Map<String, dynamic> json) =>
    _$StatisticsImpl(
      subscriberCount: json['subscriberCount'] as String,
    );

Map<String, dynamic> _$$StatisticsImplToJson(_$StatisticsImpl instance) =>
    <String, dynamic>{
      'subscriberCount': instance.subscriberCount,
    };
