class User {
  final String accessToken;
  final UserDetails userDetails;
  const User({required this.accessToken, required this.userDetails});

  static const User empty = User(
      accessToken: "",
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
