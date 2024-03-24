part of 'video_details_bloc.dart';

@immutable
sealed class VideoDetailsEvent extends Equatable {
  const VideoDetailsEvent();
}

class FetchVideoDetailsEvent extends VideoDetailsEvent {
  final String videoId;
  const FetchVideoDetailsEvent({required this.videoId});

  @override
  List<Object> get props => [];
}
