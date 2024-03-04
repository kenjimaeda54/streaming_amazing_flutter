import 'package:google_sign_in/google_sign_in.dart';
import 'package:streaming_amazing_flutter/client/client_service.dart';
import 'package:streaming_amazing_flutter/client/google_sign_in_service.dart';

class ClientRepository {
  final ClientService _clientApi = ClientService();
  final GoogleSignInService _googleSignInService = GoogleSignInService();

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

  Future<GoogleSignInAccount?> fetchCurrentUserChanged() {
    return _googleSignInService.fetchCurrentUserChanged();
  }

  GoogleSignInAccount? getCurrentUser() {
    return _googleSignInService.googleSignIn.currentUser;
  }
}
