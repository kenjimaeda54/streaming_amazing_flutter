import 'package:streaming_amazing_flutter/models/thumbnails_details.dart';

class Video {
  final ItemsVideo items;

  Video({required this.items});

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(items: json['items']);
  }
}

class ItemsVideo {
  final SnippetVideo snippet;
  final IdVideo id;

  ItemsVideo({required this.snippet, required this.id});

  factory ItemsVideo.fromJson(Map<String, dynamic> json) {
    return ItemsVideo(snippet: json['snippet'], id: json['id']);
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
        thumbnails: json['thumbnails'],
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
        defaultThumbNails: json['default'],
        medium: json['medium'],
        high: json['high']);
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
