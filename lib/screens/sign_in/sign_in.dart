import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/google_sign_in/google_sign_in_bloc.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();

  static Route route() {
    return MaterialPageRoute(builder: (_) => const SignIn());
  }
}

class _SignInState extends State<SignIn> {
  late GoogleSignInBloc _googleSignInBloc;

  @override
  void initState() {
    _googleSignInBloc = BlocProvider.of(context);
    super.initState();
  }

//usando a main como listener sempre que sofrer um update status ira redericionar , nao preciso chamar o navigator para navegar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1638389746768-fd3020d35add?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Streaming Amazing",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    "Seu aplicativo de streaming de vídeos.\nEste aplicativo e independente usamos sua conta do Youtube para personalizar sua experiência",
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).primaryColor,
                        fontSize: 17,
                        height: 1.59,
                        shadows: [
                          BoxShadow(
                            color: const Color(0x151718).withOpacity(0.79),
                            offset: const Offset(-3, 1),
                            blurRadius: 3,
                            spreadRadius: -4,
                          ),
                        ]),
                  ),
                ),
              ]),
        ),
        Positioned(
          bottom: 50,
          left: 20,
          right: 20,
          child: ElevatedButton(
            style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(0),
              backgroundColor:
                  MaterialStatePropertyAll(Theme.of(context).primaryColor),
            ),
            onPressed: () => _googleSignInBloc.add(GoogleAuthenticationChanged(
                status: AuthenticationStatus.authenticated)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Vamos começar?",
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: Theme.of(context).primaryColorDark),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
