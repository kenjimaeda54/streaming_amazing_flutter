import 'package:streaming_amazing_flutter/models/videos.dart';

class Channel {
  final List<ChannelItems> items;
  Channel({required this.items});

  factory Channel.fromJson(Map<String, dynamic> json) {
    var paredItems = json['items'] as List;
    List<ChannelItems> items =
        paredItems.map((it) => ChannelItems.fromJson(it)).toList();
    return Channel(items: items);
  }
}

class ChannelItems {
  final String id;
  final SnippetChannel snippet;
  final StatisticsChannel statistics;

  ChannelItems(
      {required this.id, required this.snippet, required this.statistics});

  factory ChannelItems.fromJson(Map<String, dynamic> json) {
    return ChannelItems(
        id: json['id'],
        snippet: SnippetChannel.fromJson(json['snippet']),
        statistics: StatisticsChannel.fromJson(json['statistics']));
  }
}

class StatisticsChannel {
  final String subscriberCount;

  StatisticsChannel({required this.subscriberCount});

  factory StatisticsChannel.fromJson(Map<String, dynamic> json) {
    return StatisticsChannel(subscriberCount: json['subscriberCount']);
  }
}

class SnippetChannel {
  final String title;
  final String description;
  final String customUrl;
  final String publishedAt;
  final ThumbNailsVideo thumbnails;

  SnippetChannel(
      {required this.title,
      required this.description,
      required this.customUrl,
      required this.publishedAt,
      required this.thumbnails});

  factory SnippetChannel.fromJson(Map<String, dynamic> json) {
    return SnippetChannel(
      title: json['title'],
      description: json['description'],
      customUrl: json['customUrl'],
      publishedAt: json['publishedAt'],
      thumbnails: ThumbNailsVideo.fromJson(json['thumbnails']),
    );
  }
}
