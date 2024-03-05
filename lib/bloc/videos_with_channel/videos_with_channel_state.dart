part of 'videos_with_channel_bloc.dart';

@immutable
sealed class VideosWithChannelState {}

//state inicial
final class VideosWithChannelInitial extends VideosWithChannelState {}

//carregando
final class VideosWithChannelStateLoading extends VideosWithChannelState {}

//finalizado
final class VideosWithChannelLoaded extends VideosWithChannelState {
  final List<VideosWithChannel> data;
  VideosWithChannelLoaded({required this.data});
}

final class VideosWithLiveAndChannelLoaded extends VideosWithChannelState {
  final List<VideosWithChannel> data;
  VideosWithLiveAndChannelLoaded({required this.data});
}

final class VideosWithChannelError extends VideosWithChannelState {
  final String errorMessage;
  VideosWithChannelError({required this.errorMessage});
}
