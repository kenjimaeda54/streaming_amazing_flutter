import 'package:streaming_amazing_flutter/models/subscription/subscription.dart';
import 'package:streaming_amazing_flutter/models/thumbnails_details/thumbnails_details.dart';

final mockChannelSubscription = [
  const Subscription(items: [
    ItemsSubscription(
      id: "343434",
      snippet: SnippetSubscription(
        title: "Homem Aranha",
        thumbnails: ThumbnailSubscription(
            medium:
                ThumbnailsDetails(url: "https://github.com/kenjimaeda54.png"),
            high:
                ThumbnailsDetails(url: "https://github.com/kenjimaeda54.png")),
        resourceId: ResourceId(channelId: "343434343"),
      ),
    ),
  ]),
  const Subscription(items: [
    ItemsSubscription(
      id: "343434343",
      snippet: SnippetSubscription(
        title: "Homem Aranha 2",
        thumbnails: ThumbnailSubscription(
            medium:
                ThumbnailsDetails(url: "https://github.com/kenjimaeda54.png"),
            high:
                ThumbnailsDetails(url: "https://github.com/kenjimaeda54.png")),
        resourceId: ResourceId(channelId: "34343434dfdf3"),
      ),
    ),
  ]),
  const Subscription(items: [
    ItemsSubscription(
      id: "343434fdfd",
      snippet: SnippetSubscription(
        title: "Homem Aranha 3",
        thumbnails: ThumbnailSubscription(
            medium:
                ThumbnailsDetails(url: "https://github.com/kenjimaeda54.png"),
            high:
                ThumbnailsDetails(url: "https://github.com/kenjimaeda54.png")),
        resourceId: ResourceId(channelId: "343434343fsfsf"),
      ),
    ),
  ]),
  const Subscription(items: [
    ItemsSubscription(
      id: "34343423434",
      snippet: SnippetSubscription(
        title: "Homem Aranha",
        thumbnails: ThumbnailSubscription(
            medium:
                ThumbnailsDetails(url: "https://github.com/kenjimaeda54.png"),
            high:
                ThumbnailsDetails(url: "https://github.com/kenjimaeda54.png")),
        resourceId: ResourceId(channelId: "3434hfhgf34343"),
      ),
    ),
  ]),
  const Subscription(items: [
    ItemsSubscription(
      id: "34343423434",
      snippet: SnippetSubscription(
        title: "Homem Aranha",
        thumbnails: ThumbnailSubscription(
            medium:
                ThumbnailsDetails(url: "https://github.com/kenjimaeda54.png"),
            high:
                ThumbnailsDetails(url: "https://github.com/kenjimaeda54.png")),
        resourceId: ResourceId(channelId: "3434hfhgf34343"),
      ),
    ),
  ]),
];
