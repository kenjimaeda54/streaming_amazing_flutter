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
