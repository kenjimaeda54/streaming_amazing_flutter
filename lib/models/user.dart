class User {
  final String idToken;
  final UserDetails userDetails;
  const User({required this.idToken, required this.userDetails});

  static const User empty = User(
      idToken: "",
      userDetails: UserDetails(
          email: "",
          givenName: "",
          photo: "")); //precisa chamar os construtores com const
}

class UserDetails {
  final String? photo;
  final String? givenName;
  final String email;

  const UserDetails(
      {required this.email, required this.givenName, required this.photo});
}
