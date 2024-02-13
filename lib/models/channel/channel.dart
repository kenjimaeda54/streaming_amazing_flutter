import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:streaming_amazing_flutter/models/thumbnails/thumbnails.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
class Channel with _$Channel {
  const factory Channel({required List<ChannelItems> items}) = _Channel;

  factory Channel.fromJson(Map<String, Object?> json) =>
      _$ChannelFromJson(json);
}

@freezed
class ChannelItems with _$ChannelItems {
  const factory ChannelItems(
      {required String id,
      required Snippet snippet,
      required Statistics statistics}) = _ChannelItems;

  factory ChannelItems.fromJson(Map<String, Object?> json) =>
      _$ChannelItemsFromJson(json);
}

@freezed
class Snippet with _$Snippet {
  const factory Snippet(
      {required String title,
      required String description,
      required String customUrl,
      required String publishedAt,
      required ThumbnailsVideo thumbnails}) = _Snippet;

  factory Snippet.fromJson(Map<String, Object?> json) =>
      _$SnippetFromJson(json);
}

@freezed
class Statistics with _$Statistics {
  const factory Statistics({required String subscriberCount}) = _Statistics;

  factory Statistics.fromJson(Map<String, Object?> json) =>
      _$StatisticsFromJson(json);
}
