import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/bloc/google_sign_in/google_sign_in_bloc.dart';
import 'package:streaming_amazing_flutter/models/splash/splash_screen.dart';
import 'package:streaming_amazing_flutter/routes/app_routes.dart';
import 'package:streaming_amazing_flutter/screens/sign_in/sign_in.dart';

void main() {
  runApp(const AppView());
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GoogleSignInBloc(),
      child: const Streaming(),
    );
  }
}

//bloc
//https://github.com/felangel/bloc/blob/master/examples/flutter_login/lib/login/view/login_form.dart
//https://github.com/maraj91/flutter_news_bloc/tree/master/lib
//https://marajhussain.medium.com/flutter-bloc-clean-architecture-best-practice-news-apis-3adb0e2012cc#:~:text=BLoC%20is%20the%20replacement%20of%20ViewModel%20in%20MVVM%20architecture.&text=It%20makes%20it%20easy%20to,the%20state%20of%20the%20application
class Streaming extends StatefulWidget {
  const Streaming({super.key});

  @override
  State<Streaming> createState() => _StreamingState();
}

class _StreamingState extends State<Streaming> {
  late GoogleSignInBloc _googleSignBloc;
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  void initState() {
    super.initState();
    _googleSignBloc = BlocProvider.of(context);
    _googleSignBloc.add(GoogleCurrentUser());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        navigatorKey:
            _navigatorKey, // precisa inserior para conseguir iniciar o navigator
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              error: const Color(0xFFDC1637),
              secondary: const Color(0xFFF4F5FA),
              surface: const Color(0xFF818589),
              surfaceTint: const Color(0xFFE5E4E2)),
          primaryColor: const Color(0xFFFFFFFF),
          primaryColorDark: const Color(0xFF09090A),
          useMaterial3: true,
        ),
        builder: (context, child) {
          //nao preciso chamar em signIn o navigator o listener srea responseavel
          return BlocListener<GoogleSignInBloc, GoogleAuthenticationState>(
            listener: (context, state) {
              switch (state.status) {
                case AuthenticationStatus.authenticated:
                  _navigator.pushAndRemoveUntil(
                      AppRoutes.route(), (route) => false);

                case AuthenticationStatus.unauthenticated:
                  _navigator.pushAndRemoveUntil(
                      SignIn.route(), (route) => false);

                case AuthenticationStatus.unknown:
                  break;
              }
            },
            child: child,
          );
        },
        onGenerateRoute: (_) => SplashScreen
            .route() //sera chamado de imediato ate o builder ser chamado
        );
  }
}
