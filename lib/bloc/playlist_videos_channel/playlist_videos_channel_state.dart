part of 'playlist_videos_channel_bloc.dart';

@immutable
sealed class PlayListVideosChannelState {}

//state inicial
final class PlayListVideosChannelInitial extends PlayListVideosChannelState {}

//carregando
final class PlayListVideosChannelStateLoading
    extends PlayListVideosChannelState {}

//finalizado
final class PlayListVideosChannelLoaded extends PlayListVideosChannelState {
  final List<ItemsPlayList> data;
  PlayListVideosChannelLoaded({required this.data});
}

final class PlayListVideosChannelError extends PlayListVideosChannelState {
  final String errorMessage;
  PlayListVideosChannelError({required this.errorMessage});
}
