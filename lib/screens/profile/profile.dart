import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/google_sign_in/google_sign_in_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((GoogleSignInBloc bloc) => bloc.state.user);

    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(user.userDetails.photo ??
                          "https://github.com/kenjimaeda.png"),
                      fit: BoxFit.fill)),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nome",
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColorDark),
                  ),
                  Text(
                    user.userDetails.givenName ?? "",
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.surface),
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColorDark),
                  ),
                  Text(
                    user.userDetails.email,
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.surface),
                  ),
                  TextButton(
                      style: ButtonStyle(
                        alignment: Alignment.centerLeft, //alinhar
                        padding: MaterialStateProperty.all(
                            EdgeInsets.zero), //retirar o padding interno
                      ),
                      onPressed: () {},
                      child: Text(
                        "Sair",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.error),
                      ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
