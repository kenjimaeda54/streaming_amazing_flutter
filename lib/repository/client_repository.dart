import 'package:streaming_amazing_flutter/client/client_service.dart';

class ClientRepository {
  final ClientService _clientApi = ClientService();

  //nao posso colocar o tipo de retorno no repository
  Future fetchChannel(String channelId) async {
    return await _clientApi.fetchChannel(channelId);
  }

  Future fetchVideos([bool isEventTypeLive = false]) async {
    return await _clientApi.fetchVideos(isEventTypeLive);
  }

  Future fetchSubscription(String accessToken) async {
    return await _clientApi.fetchSubscription(accessToken);
  }

  Future fetchPlayListChannel(String playListId) async {
    return await _clientApi.fetchPlayListChannel(playListId);
  }

  Future fetchIdsPlayListVideosByChannel(String channelId) async {
    return await _clientApi.fetchIdsPlaysListVideosByChannel(channelId);
  }

  Future fetchVideoDetails(String videoId) async {
    return await _clientApi.fetchVideosDetails(videoId);
  }
}
