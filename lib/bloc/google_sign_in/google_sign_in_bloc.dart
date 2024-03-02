import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:streaming_amazing_flutter/models/user.dart';
import 'package:streaming_amazing_flutter/repository/client_repository.dart';

part 'google_sign_in_event.dart';
part 'google_sign_in_state.dart';

class GoogleSignInBloc
    extends Bloc<GoogleSignInEvent, GoogleAuthenticationState> {
  final ClientRepository _clientRepository = ClientRepository();

  GoogleSignInBloc() : super(const GoogleAuthenticationState.unknown()) {
    on<GoogleAuthenticationChanged>(_googleAuthenticationChanged);
    on<GoogleCurrentUser>(_googleGetCurrentUser);
  }

  _googleGetCurrentUser(
      GoogleCurrentUser event, Emitter<GoogleAuthenticationState> emit) {
    final currentUser = _clientRepository.getCurrentUser();
    if (currentUser != null) {
      final user = User(
          idToken: currentUser.serverAuthCode ?? "",
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
        final userAccount = await _clientRepository.fetchCurrentUserChanged();
        if (userAccount != null) {
          final user = User(
              idToken: userAccount.serverAuthCode ?? "",
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

  // _handleAuthorizeUser(
  //     GoogleSignInEvent event, Emitter<GoogleSignInState> emit) {
  //   if (event is GoogleFetchAuthorizeUser) {
  //     emit(GoogleSignInInitial());
  //     emit(GoogleSignLoading());
  //     final currentUser = _clientRepository.getCurrentUser();

  //     if (currentUser != null) {
  //       final user = User(
  //           idToken: currentUser.serverAuthCode ?? "",
  //           userDetails: UserDetails(
  //               email: currentUser.email,
  //               givenName: currentUser.displayName,
  //               photo: currentUser.photoUrl));

  //       emit(GoogleSignInLoaded(user: user));
  //     }
  //   }
  // }

  // _fetchUserChanged(
  //     GoogleSignInEvent event, Emitter<GoogleSignInState> emit) async {
  //   if (event is GoogleSignFetchUser) {
  //     emit(GoogleSignInInitial());
  //     emit(GoogleSignLoading());

  //     final userAccount = await _clientRepository.fetchCurrentUserChanged();

  //     if (userAccount != null) {
  //       final user = User(
  //           idToken: userAccount.serverAuthCode ?? "",
  //           userDetails: UserDetails(
  //               email: userAccount.email,
  //               givenName: userAccount.displayName,
  //               photo: userAccount.photoUrl));
  //       emit(GoogleSignInLoaded(user: user));
  //       return;
  //     }
  //     emit(GoogleSingError());
  //   }
  // }
}