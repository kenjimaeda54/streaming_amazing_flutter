import 'package:streaming_amazing_flutter/client/base_service.dart';
import 'package:streaming_amazing_flutter/client/dio.dart';
import 'package:streaming_amazing_flutter/models/channel.dart';
import 'package:streaming_amazing_flutter/models/videos.dart';

class ClientService extends BaseService {
  @override
  Future<Channel?> fetchChannel(String channelId) async {
    try {
      final response = await api.get(
          "/channels?part=statistics&part=snippet&id=$channelId&key=AIzaSyCU7HV_2LRv3Z3Uf0Prvb2C7i_ob8j9cQU");
      return Channel.fromJson(response.data);
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<Video?> fetchVideos() async {
    try {
      final response = await api.get(
          "/search?part=snippet&relevanceLanguage=pt&maxResults=10&videoDuration=medium&type=video&regionCode=BR&key=AIzaSyCU7HV_2LRv3Z3Uf0Prvb2C7i_ob8j9cQU");

      return Video.fromJson(response.data);
    } catch (e) {
      print("$e,where => client_service");
      rethrow;
    }
  }
}
