part of 'playlist_videos_channel_bloc.dart';

@immutable
sealed class PlayListVideosChannelState extends Equatable {
  const PlayListVideosChannelState();

  @override
  List<Object> get props => [];
}

//carregando
final class PlayListVideosChannelStateLoading
    extends PlayListVideosChannelState {}

//finalizado
final class PlayListVideosChannelLoaded extends PlayListVideosChannelState {
  final List<ItemsPlayList> data;
  const PlayListVideosChannelLoaded({required this.data});

  @override
  List<Object> get props => [data];
}

final class PlayListVideosChannelError extends PlayListVideosChannelState {
  final String errorMessage;
  const PlayListVideosChannelError({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
