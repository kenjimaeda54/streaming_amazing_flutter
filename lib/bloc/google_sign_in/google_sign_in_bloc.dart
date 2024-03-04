import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:streaming_amazing_flutter/models/user.dart';

part 'google_sign_in_event.dart';
part 'google_sign_in_state.dart';

final List<String> scopes = [
  "https://www.googleapis.com/auth/youtube",
  "https://www.googleapis.com/auth/youtube.readonly",
  "https://www.googleapis.com/auth/youtubepartner"
];

class GoogleSignInBloc
    extends Bloc<GoogleSignInEvent, GoogleAuthenticationState> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId:
        '359153041371-hbq6vvh9p39ojcd2t9a7p741ktip6tms.apps.googleusercontent.com',
    scopes: scopes,
  );

  GoogleSignInBloc() : super(const GoogleAuthenticationState.unknown()) {
    on<GoogleAuthenticationChanged>(_googleAuthenticationChanged);
    on<GoogleCurrentUser>(_googleGetCurrentUser);
  }

  _googleGetCurrentUser(
      GoogleCurrentUser event, Emitter<GoogleAuthenticationState> emit) async {
    final currentUser = _googleSignIn.currentUser;
    final googleAuthentication = await currentUser?.authentication;

    if (currentUser != null) {
      final user = User(
          accessToken: googleAuthentication?.accessToken ?? "",
          userDetails: UserDetails(
              email: currentUser.email,
              givenName: currentUser.displayName,
              photo: currentUser.photoUrl));
      emit(GoogleAuthenticationState.authenticated(user));
      return;
    }
    emit(const GoogleAuthenticationState.unauthenticated());
  }

  _googleAuthenticationChanged(GoogleAuthenticationChanged event,
      Emitter<GoogleAuthenticationState> emit) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const GoogleAuthenticationState.unauthenticated());

      case AuthenticationStatus.authenticated:
        final userAccount = await _googleSignIn.signIn();
        await _googleSignIn.requestScopes(scopes);
        _googleSignIn.signInSilently();
        final googleAuthentication = await userAccount?.authentication;
        if (userAccount != null) {
          final user = User(
              accessToken: googleAuthentication?.accessToken ?? "",
              userDetails: UserDetails(
                  email: userAccount.email,
                  givenName: userAccount.displayName,
                  photo: userAccount.photoUrl));
          return emit(GoogleAuthenticationState.authenticated(user));
        } else {
          return emit(const GoogleAuthenticationState.unauthenticated());
        }
      case AuthenticationStatus.unknown:
        return emit(const GoogleAuthenticationState.unauthenticated());
    }
  }
}
