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
