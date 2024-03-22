import 'package:dio/dio.dart';
import 'package:streaming_amazing_flutter/client/base_service.dart';
import 'package:streaming_amazing_flutter/client/dio.dart';
import 'package:streaming_amazing_flutter/models/channel/channel.dart';
import 'package:streaming_amazing_flutter/models/playlist_channel/playlist_channel.dart';
import 'package:streaming_amazing_flutter/models/playlist_ids_videos_channel/playlist_ids_videos_channel.dart';
import 'package:streaming_amazing_flutter/models/subscription/subscription.dart';
import 'package:streaming_amazing_flutter/models/videos/videos.dart';

class ClientService extends BaseService {
  @override
  Future<Channel?> fetchChannel(String channelId) async {
    try {
      final response = await api.get(
          "/channels?part=statistics&part=snippet&id=$channelId&key=AIzaSyCUPqRcX5SRR4zEegeZJjhjk9vtlFGbTfU");
      return Channel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Video?> fetchVideos([bool isEventTypeLive = false]) async {
    try {
      final response = isEventTypeLive
          ? await api.get(
              "/search?part=snippet&eventType=live&relevanceLanguage=pt&maxResults=10&type=video&regionCode=BR&key=AIzaSyCUPqRcX5SRR4zEegeZJjhjk9vtlFGbTfU")
          : await api.get(
              "/search?part=snippet&relevanceLanguage=pt&maxResults=10&videoDuration=medium&type=video&regionCode=BR&key=AIzaSyCUPqRcX5SRR4zEegeZJjhjk9vtlFGbTfU");

      return Video.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Subscription> fetchSubscription(String accessToken) async {
    try {
      final response = await api.get(
          "/subscriptions?part=snippet&maxResults=10&mine=true&key=AIzaSyCUPqRcX5SRR4zEegeZJjhjk9vtlFGbTfU",
          options: Options(headers: {"Authorization": "Bearer $accessToken"}));

      return Subscription.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PlayListChannel> fetchPlayListChannel(String playListId) async {
    try {
      final response = await api.get(
          "/playlistItems?part=snippet&maxResults=1&playlistId=$playListId&key=AIzaSyCUPqRcX5SRR4zEegeZJjhjk9vtlFGbTfU");

      return PlayListChannel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PlaylistIdsVideosChannel> fetchIdsPlaysListVideosByChannel(
      String channelId) async {
    try {
      final response = await api.get(
          "/playlists?part=id&channelId=$channelId&maxResults=10&key=AIzaSyCUPqRcX5SRR4zEegeZJjhjk9vtlFGbTfU");

      return PlaylistIdsVideosChannel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
