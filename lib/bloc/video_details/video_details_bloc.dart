import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:streaming_amazing_flutter/models/video_details/video_details.dart';
import 'package:streaming_amazing_flutter/repository/client_repository.dart';

part 'video_details_event.dart';
part 'video_details_state.dart';

class VideoDetailsBloc extends Bloc<VideoDetailsEvent, VideoDetailsState> {
  final _clientRepo = ClientRepository();

  VideoDetailsBloc() : super(VideoDetailsStateLoading()) {
    on<FetchVideoDetailsEvent>(_fetchVideosDetails);
  }

  FutureOr<void> _fetchVideosDetails(
      FetchVideoDetailsEvent event, Emitter<VideoDetailsState> emit) async {
    emit(VideoDetailsStateLoading());
    await _clientRepo
        .fetchVideoDetails(event.videoId)
        .catchError((error) =>
            emit(VideoDetailsStateError(errorMessage: error.toString())))
        .then((value) => emit(VideoDetailsStateLoaded(data: value)));
  }
}
