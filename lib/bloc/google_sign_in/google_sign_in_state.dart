part of 'google_sign_in_bloc.dart';

enum AuthenticationStatus { unknown, unauthenticated, authenticated }


//usei o pacote equatable pra fazer state sofrer mudança
class GoogleAuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final User user;

  const GoogleAuthenticationState._(
      {this.status = AuthenticationStatus.unknown, this.user = User.empty});

  const GoogleAuthenticationState.unknown() : this._();

  const GoogleAuthenticationState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  const GoogleAuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  @override
  List<Object> get props => [status, user];
}
