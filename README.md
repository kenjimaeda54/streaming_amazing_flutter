## Streaming Amazing
Aplicativo de streaming de vídeos, consumindo API do Youtube. Pode visualizar na home os principais vídeos em alta e os canais em que a pessoa está inscrita. Possui tela para os vídeos ao vivo por fim visualizar o perfil do usuário.

## Feature
- Para determinar a posição do aplicaitvo em flutter é possivel realizar de forma nativa usando propreidades do IOS é do Android, porem se fizer isto não conseguira depois programaticamente alterar a posicão da tela, por este motivo usei o SystemChrome

``` dart

void main() {
 WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

//  details video

class _DetailsVideoState extedns State<DetailsVideo> {

 @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        params: const YoutubePlayerParams(showFullscreenButton: true));
    _controller.loadVideoById(videoId: widget.videoWithChannel.videoId);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    Future.delayed(Duration.zero, () async => await Jiffy.setLocale("pt_BR"));
  }


YoutubePlayerScaffold(
            controller: _controller,
            aspectRatio: 1 / 1,
            defaultOrientations: const [DeviceOrientation.portraitUp],
            fullscreenOrientations: const [
              DeviceOrientation.landscapeRight,
              DeviceOrientation.landscapeLeft, //ira alterar para landscapeLet quando estiver em full screen
            ],
            autoFullScreen: false,
            enableFullScreenOnVerticalDrag: true,
            builder: (context, player) => ContentDetailsVideo(
                data: state.data,
                player: player,
                videoWithChannel: widget.videoWithChannel)),


}
```

##
- Para lidar com variaveis de ambiente usei o [dotenv](https://pub.dev/packages/flutter_dotenv)
- Arquitetura do projeto foi baseado na arquitetura bloc,pode consultar outros examples como implementar essa arquiteura [nesse link](https://github.com/felangel/bloc/tree/master/examples)
- Para realizar o login usando esta arquiteura primerio declarei no materialApp o key do navigator, preciso inserir ele para navigator poder ser iniciado
- Na propriedade onGenereteRoute chamei apenas um arquivo vazio é no metodo builder(reponsavel por inserir o widgets na arvore), farei a logica de logado ou não
- Metodo listener e acionado assim que alterar o bloc fazendo assim redirecionamento para as rotas logadas se der tudo certo
- Uusrio ao tenta logar no metodo onPress  apenas altero o bloc para  autenticaticado e automaticamente ele dispara o listener alterando para tela de home
- Metodo GoogleAuthetnicationChanged e reponsavel determinar se esta tudo certo ou nao
- Para refletir qualquer mudanca corretamente usei pacote [Equatable](https://pub.dev/packages/equatable)


``` dart

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


// Sigin
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
                  width: MediaQuery.of(context).size.width * 0.8,
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


// Google Sigin Bloc
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
  final GoogleSignIn _googleSignIn = Platform.isIOS
      ? GoogleSignIn(
          clientId: dotenv.env['CLIENT_ID'],
          scopes: scopes,
        )
      : GoogleSignIn(
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
          await _googleSignIn.signOut();
          return emit(const GoogleAuthenticationState.unauthenticated());
        }
      case AuthenticationStatus.unknown:
        return emit(const GoogleAuthenticationState.unauthenticated());
    }
  }
}

// Google Sigin State

enum AuthenticationStatus { unknown, unauthenticated, authenticated }

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

# Google Sigin Event

part of 'google_sign_in_bloc.dart';

@immutable
sealed class GoogleSignInEvent {}

class GoogleAuthenticationChanged extends GoogleSignInEvent {
  final AuthenticationStatus status;
  GoogleAuthenticationChanged({required this.status});
}

class GoogleCurrentUser extends GoogleSignInEvent {}


```
##
- Evite querer reaproveitar blocs pois pode ocorrer efeitos colaterais exemplo foi LiveVideosBloc é o VideosWithChannelBloc tem metodos implementados basciamentes iguais apenas altera que um passa paremtro isLive paara repsoitoyr e retorna apenas videos que estao ocorrendo em momento de live, porem mesmo com as semelhanças precisei trabalhar separado para evitar comportamneto estranho ao emitr um bloc de isLive ou não
- Repara exemplo abaixo que acionar um bloc que tem efeitos colaterais como requisições de internet e diferente da implementacao acima


``` dart
//bloc

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:streaming_amazing_flutter/models/channel/channel.dart';
import 'package:streaming_amazing_flutter/models/videos/videos.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';
import 'package:streaming_amazing_flutter/repository/client_repository.dart';

part 'live_videos_channel_event.dart';
part 'live_videos_channel_state.dart';

class LiveVideosChannelBloc
    extends Bloc<LiveVideosChannelEvent, LiveVideosChannelState> {
  final _clientRepo = ClientRepository();

  LiveVideosChannelBloc() : super(LiveVideosChannelStateLoading()) {
    on<FetchLiveVideosChannelEvent>(_fetchVideosWithLiveAndChannel);
  }

  FutureOr<void> _fetchVideosWithLiveAndChannel(
      FetchLiveVideosChannelEvent event,
      Emitter<LiveVideosChannelState> emit) async {
    final List<VideosWithChannel> videosWithLiveAndChannel = [];
    emit(LiveVideosChannelStateLoading());

    await _clientRepo
        .fetchVideos(true)
        .onError((error, stackTrace) =>
            emit(LiveVideosChannelStateError(errorMessage: error.toString())))
        .then((videos) async {
      if (videos != null) {
        for (var inteirador in (videos as Video).items) {
          await _clientRepo
              .fetchChannel(inteirador.snippet.channelId)
              .onError((error, stackTrace) =>
                  LiveVideosChannelStateError(errorMessage: error.toString()))
              .then((it) {
            final channel = it as Channel;
            final video = VideosWithChannel(
                channelId: channel.items.first.id,
                descriptionVideo: inteirador.snippet.description,
                id: inteirador.id.videoId,
                publishedVideo: inteirador.snippet.publishedAt,
                subscriberCountChannel:
                    it.items.first.statistics.subscriberCount,
                thumbVideo: inteirador.snippet.thumbnails.high.url,
                thumbProfileChannel:
                    channel.items.first.snippet.thumbnails.medium.url,
                titleVideo: inteirador.snippet.title,
                videoId: inteirador.id.videoId);

            videosWithLiveAndChannel.add(video);
          });
        }
        emit(LiveVideosChannelStateLoaded(data: videosWithLiveAndChannel));
      }
    });
  }
}

//event
part of 'live_videos_channel_bloc.dart';

@immutable
sealed class LiveVideosChannelEvent extends Equatable {
  const LiveVideosChannelEvent();
}

class FetchLiveVideosChannelEvent extends LiveVideosChannelEvent {
  const FetchLiveVideosChannelEvent();
  @override
  List<Object> get props => [];
}


//state

part of 'live_videos_channel_bloc.dart';

@immutable
sealed class LiveVideosChannelState extends Equatable {
  const LiveVideosChannelState();

  @override
  List<Object> get props => [];
}

final class LiveVideosChannelStateLoading extends LiveVideosChannelState {}

final class LiveVideosChannelStateLoaded extends LiveVideosChannelState {
  final List<VideosWithChannel> data;
  const LiveVideosChannelStateLoaded({required this.data});

  @override
  List<Object> get props => [data];
}

final class LiveVideosChannelStateError extends LiveVideosChannelState {
  final String errorMessage;
  const LiveVideosChannelStateError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}



````
##

- Para criar aqueles efeitos de blu pode usar backdropfilter
- Para o body extender o app bar pode usar extendBodyBehindAppBar e forceMaterialTransparency


``` dart

class CustomBackButton extends StatelessWidget {
  final Function() actionTapButton;
  const CustomBackButton({super.key, required this.actionTapButton});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: actionTapButton,
      child: Stack(
        alignment: Alignment.center,
        children: [
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0), //quantidade de largura e altura do blur
              child: Container(  //precisa desse container
                 decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .surfaceTint
                        .withOpacity(0.9),
                    shape: BoxShape.circle),
                height: 30,
                width: 30,
              )),
          Image.asset(
            "assets/icons/back.png",
            fit: BoxFit.cover,
            width: 25,
            height: 25,
            cacheHeight: 25,
            cacheWidth: 25,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}



Scaffold(
      extendBodyBehindAppBar: true,  //essa propriedade
      appBar: AppBar(
        forceMaterialTransparency: true, //essa propriedade
        elevation: 0,
        toolbarHeight: 35,
        backgroundColor: Colors.transparent,
        leading: CustomBackButton(
          actionTapButton: () => Navigator.of(context).pop(),
        ),
      ),
      body: ....
```








