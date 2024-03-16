part of 'playlist_videos_channel_bloc.dart';

@immutable
sealed class PlayListVideosChannelEvent extends Equatable {
  const PlayListVideosChannelEvent();
}

class PlayListVideosFetchDataEvent extends PlayListVideosChannelEvent {
  final String channelId;
  const PlayListVideosFetchDataEvent({required this.channelId});

  @override
  List<Object?> get props => [channelId];
}
