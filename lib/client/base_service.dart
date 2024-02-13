import 'package:streaming_amazing_flutter/models/channel/channel.dart';
import 'package:streaming_amazing_flutter/models/subscription/subscription.dart';
import 'package:streaming_amazing_flutter/models/videos/videos.dart';

abstract class BaseService {
  Future<Video?> fetchVideos();
  Future<Channel?> fetchChannel(String channelId);
  Future<Subscription> fetchSubscription(String accessToken);
}
