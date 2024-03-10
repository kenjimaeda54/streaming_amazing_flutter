import 'package:streaming_amazing_flutter/models/channel/channel.dart';
import 'package:streaming_amazing_flutter/models/playlist_channel/playlist_channel.dart';
import 'package:streaming_amazing_flutter/models/playlist_ids_videos_channel/playlist_ids_videos_channel.dart';
import 'package:streaming_amazing_flutter/models/subscription/subscription.dart';
import 'package:streaming_amazing_flutter/models/videos/videos.dart';

abstract class BaseService {
  Future<Video?> fetchVideos(bool isEventTypeLive);
  Future<Channel?> fetchChannel(String channelId);
  Future<Subscription> fetchSubscription(String accessToken);
  Future<PlayListChannel> fetchPlayListChannel(String playListId);
  Future<PlaylistIdsVideosChannel> fetchIdsPlaysListVideosByChannel(
      String channelId);
}
