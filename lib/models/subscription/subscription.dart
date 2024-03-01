import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:streaming_amazing_flutter/models/thumbnails_details/thumbnails_details.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
class Subscription with _$Subscription {
  const factory Subscription({required List<ItemsSubscription> items}) =
      _Subscription;

  factory Subscription.fromJson(Map<String, Object?> json) =>
      _$SubscriptionFromJson(json);
}

@freezed
class ItemsSubscription with _$ItemsSubscription {
  const factory ItemsSubscription(
      {required String id,
      required SnippetSubscription snippet}) = _ItemsSubscription;

  factory ItemsSubscription.fromJson(Map<String, Object?> json) =>
      _$ItemsSubscriptionFromJson(json);
}

@freezed
class SnippetSubscription with _$SnippetSubscription {
  const factory SnippetSubscription(
      {required String title,
      required ThumbnailSubscription thumbnails,
      required ResourceId resourceId}) = _SnippetSubscription;

  factory SnippetSubscription.fromJson(Map<String, Object?> json) =>
      _$SnippetSubscriptionFromJson(json);
}

//se comecar a dar esse erro da uma olhada na classe do mixin
//ele normalmente ira dar o auto complete e so aceitar
// _$ThumbnailSubscription
@freezed
class ThumbnailSubscription with _$ThumbnailSubscription {
  const factory ThumbnailSubscription(
      {required ThumbnailsDetails medium,
      required ThumbnailsDetails high}) = _ThumbnailSubscription;

  factory ThumbnailSubscription.fromJson(Map<String, Object?> json) =>
      _$ThumbnailSubscriptionFromJson(json);
}

@freezed
class ResourceId with _$ResourceId {
  const factory ResourceId({required String channelId}) = _ResourceId;

  factory ResourceId.fromJson(Map<String, Object?> json) =>
      _$ResourceIdFromJson(json);
}
