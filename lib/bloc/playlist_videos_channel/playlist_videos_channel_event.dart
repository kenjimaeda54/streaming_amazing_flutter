part of 'playlist_videos_channel_bloc.dart';

@immutable
sealed class PlayListVideosChannelEvent {}

class PlayListVideosFetchDataEvent extends PlayListVideosChannelEvent {
  final String channelId;
  PlayListVideosFetchDataEvent({required this.channelId});
}
