import 'package:google_sign_in/google_sign_in.dart';

final List<String> scopes = [
  "https://www.googleapis.com/auth/youtube",
  "https://www.googleapis.com/auth/youtube.readonly",
  "https://www.googleapis.com/auth/youtubepartner"
];

//https://github.com/flutter/flutter/issues/97376
class GoogleSignInService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId:
        '359153041371-hbq6vvh9p39ojcd2t9a7p741ktip6tms.apps.googleusercontent.com',
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
      print(e.toString());
      rethrow;
    }
  }
}
