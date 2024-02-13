import 'package:streaming_amazing_flutter/models/channel.dart';
import 'package:streaming_amazing_flutter/models/videos.dart';

abstract class BaseService {
  Future<Video?> fetchVideos();
  Future<Channel?> fetchChannel(String channelId);
}
