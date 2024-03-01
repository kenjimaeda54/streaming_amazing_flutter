import 'package:google_sign_in/google_sign_in.dart';
import 'package:streaming_amazing_flutter/models/user.dart';

final List<String> scopes = [
  "https://www.googleapis.com/auth/youtube",
  "https://www.googleapis.com/auth/youtube.readonly",
  "https://www.googleapis.com/auth/youtubepartner"
];

class GoogleSignInService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: scopes,
  );

  GoogleSignIn get googleSignIn => _googleSignIn;

  Future<GoogleSignInAccount?> fetchCurrentUserChanged() async {
    try {
      final userAccount = await _googleSignIn.signIn();
      await _googleSignIn.requestScopes(scopes);
      _googleSignIn.signInSilently();
      return userAccount;
    } catch (e) {
      rethrow;
    }
  }
}
