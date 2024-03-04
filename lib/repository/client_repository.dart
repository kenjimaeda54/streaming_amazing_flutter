import 'package:streaming_amazing_flutter/client/client_service.dart';

class ClientRepository {
  final ClientService _clientApi = ClientService();

  //nao posso colocar o tipo de retorno no repository
  Future fetchChannel(String channelId) async {
    return await _clientApi.fetchChannel(channelId);
  }

  Future fetchVideos() async {
    return await _clientApi.fetchVideos();
  }

  Future fetchSubscription(String accessToken) async {
    return await _clientApi.fetchSubscription(accessToken);
  }
}
