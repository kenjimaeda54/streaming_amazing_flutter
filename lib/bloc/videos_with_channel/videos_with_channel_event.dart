part of 'videos_with_channel_bloc.dart';

@immutable
sealed class VideosWithChannelEvent extends Equatable {
  const VideosWithChannelEvent();
}

class VideosFetchDataEvent extends VideosWithChannelEvent {
  @override
  List<Object> get props => [];
}
