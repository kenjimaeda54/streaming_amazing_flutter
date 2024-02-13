import 'package:streaming_amazing_flutter/client/cleint_service.dart';

class ClientRepository {
  final ClientService _clientApi = ClientService();

  //nao posso colocar o tipo de retorno no repository
  Future fetchChannel(String channelId) async {
    return await _clientApi.fetchChannel(channelId);
  }

  Future fetchVideos() async {
    return await _clientApi.fetchVideos();
  }
}
