import 'thumbnails_details.dart';

class Subscription {
  final ItemsSubscription items;

  Subscription({required this.items});

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(items: json['items']);
  }
}

class ItemsSubscription {
  final String id;
  final SnippetSubscription snippet;

  ItemsSubscription({required this.id, required this.snippet});

  factory ItemsSubscription.fromJson(Map<String, dynamic> json) {
    return ItemsSubscription(id: json['id'], snippet: json['snippet']);
  }
}

class SnippetSubscription {
  final String title;
  final ThumbNailsSubscription thumbnails;
  final ResourceId resourceId;

  SnippetSubscription(
      {required this.title,
      required this.thumbnails,
      required this.resourceId});

  factory SnippetSubscription.fromJson(Map<String, dynamic> json) {
    return SnippetSubscription(
        title: json['title'],
        thumbnails: json['thumbnails'],
        resourceId: json['resourceId']);
  }
}

class ResourceId {
  final String channelId;

  ResourceId({required this.channelId});

  factory ResourceId.fromJson(Map<String, dynamic> json) {
    return ResourceId(channelId: json['channelId']);
  }
}

class ThumbNailsSubscription {
  final ThumbNailsDetails defaultThumbNails;
  final ThumbNailsDetails medium;
  final ThumbNailsDetails high;

  ThumbNailsSubscription(
      {required this.defaultThumbNails,
      required this.medium,
      required this.high});

  factory ThumbNailsSubscription.fromJson(Map<String, dynamic> json) {
    return ThumbNailsSubscription(
        defaultThumbNails: json['default'],
        medium: json['medium'],
        high: json['high']);
  }
}
