import 'package:streaming_amazing_flutter/models/thumbnails_details.dart';

class Video {
  final List<ItemsVideo> items;

  Video({required this.items});

  factory Video.fromJson(Map<String, dynamic> json) {
    final itemsDynamic = json['items'] as List<dynamic>;
    final items = itemsDynamic.map((it) => ItemsVideo.fromJson(it)).toList();
    return Video(items: items);
  }
}

class ItemsVideo {
  final SnippetVideo snippet;
  final IdVideo id;

  ItemsVideo({required this.snippet, required this.id});

  factory ItemsVideo.fromJson(Map<String, dynamic> json) {
    final id = IdVideo.fromJson(json["id"]);

    return ItemsVideo(snippet: SnippetVideo.fromJson(json['snippet']), id: id);
  }
}

class SnippetVideo {
  final String publishedAt;
  final String title;
  final String description;
  final ThumbNailsVideo thumbnails;
  final String channelTitle;
  final String channelId;

  SnippetVideo(
      {required this.channelId,
      required this.title,
      required this.description,
      required this.thumbnails,
      required this.channelTitle,
      required this.publishedAt});

  factory SnippetVideo.fromJson(Map<String, dynamic> json) {
    return SnippetVideo(
        channelId: json['channelId'],
        title: json['title'],
        description: json['description'],
        thumbnails: ThumbNailsVideo.fromJson(json['thumbnails']),
        channelTitle: json['channelTitle'],
        publishedAt: json['publishedAt']);
  }
}

class ThumbNailsVideo {
  final ThumbNailsDetails defaultThumbNails;
  final ThumbNailsDetails medium;
  final ThumbNailsDetails high;

  ThumbNailsVideo(
      {required this.defaultThumbNails,
      required this.medium,
      required this.high});

  factory ThumbNailsVideo.fromJson(Map<String, dynamic> json) {
    return ThumbNailsVideo(
        defaultThumbNails: ThumbNailsDetails.fromJson(json['default']),
        medium: ThumbNailsDetails.fromJson(json['medium']),
        high: ThumbNailsDetails.fromJson(json['high']));
  }
}

class IdVideo {
  final String kind;
  final String videoId;

  IdVideo({required this.kind, required this.videoId});

  factory IdVideo.fromJson(Map<String, dynamic> json) {
    return IdVideo(kind: json['kind'], videoId: json['videoId']);
  }
}
