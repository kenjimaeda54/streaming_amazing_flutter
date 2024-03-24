part of 'video_details_bloc.dart';

@immutable
sealed class VideoDetailsState extends Equatable {
  const VideoDetailsState();

  @override
  List<Object> get props => [];
}

final class VideoDetailsStateLoading extends VideoDetailsState {}

final class VideoDetailsStateLoaded extends VideoDetailsState {
  final VideoDetails data;
  const VideoDetailsStateLoaded({required this.data});

  @override
  List<Object> get props => [data];
}

final class VideoDetailsStateError extends VideoDetailsState {
  final String errorMessage;
  const VideoDetailsStateError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
