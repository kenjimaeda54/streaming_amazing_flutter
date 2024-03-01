part of 'google_sign_in_bloc.dart';

@immutable
sealed class GoogleSignInEvent {}

class GoogleAuthenticationChanged extends GoogleSignInEvent {
  final AuthenticationStatus status;
  GoogleAuthenticationChanged({required this.status});
}

class GoogleCurrentUser extends GoogleSignInEvent {}
