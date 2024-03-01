// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemsSubscription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$ItemsSubscriptionImpl _$$ItemsSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemsSubscriptionImpl(
      id: json['id'] as String,
      snippet:
          SnippetSubscription.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemsSubscriptionImplToJson(
        _$ItemsSubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'snippet': instance.snippet,
    };

_$SnippetSubscriptionImpl _$$SnippetSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$SnippetSubscriptionImpl(
      title: json['title'] as String,
      thumbnails: ThumbnailSubscription.fromJson(
          json['thumbnails'] as Map<String, dynamic>),
      resourceId:
          ResourceId.fromJson(json['resourceId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SnippetSubscriptionImplToJson(
        _$SnippetSubscriptionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnails': instance.thumbnails,
      'resourceId': instance.resourceId,
    };

_$ThumbnailSubscriptionImpl _$$ThumbnailSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$ThumbnailSubscriptionImpl(
      medium:
          ThumbnailsDetails.fromJson(json['medium'] as Map<String, dynamic>),
      high: ThumbnailsDetails.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ThumbnailSubscriptionImplToJson(
        _$ThumbnailSubscriptionImpl instance) =>
    <String, dynamic>{
      'medium': instance.medium,
      'high': instance.high,
    };

_$ResourceIdImpl _$$ResourceIdImplFromJson(Map<String, dynamic> json) =>
    _$ResourceIdImpl(
      channelId: json['channelId'] as String,
    );

Map<String, dynamic> _$$ResourceIdImplToJson(_$ResourceIdImpl instance) =>
    <String, dynamic>{
      'channelId': instance.channelId,
    };
