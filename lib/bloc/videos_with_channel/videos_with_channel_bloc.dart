import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_amazing_flutter/models/channel/channel.dart';
import 'package:streaming_amazing_flutter/models/videos/videos.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';
import 'package:streaming_amazing_flutter/repository/client_repository.dart';

part 'videos_with_channel_event.dart';
part 'videos_with_channel_state.dart';

class VideosWithChannelBloc
    extends Bloc<VideosWithChannelEvent, VideosWithChannelState> {
  final _clientRepo = ClientRepository(); //instanciando o repositório

  VideosWithChannelBloc() : super(VideosStateLoading()) {
    on<VideosWithChannelEvent>(_fetchVideosWithChannel); //registrando um evento
    on<VideosWithLiveFetchDataEvent>(_fetchVideosWithLiveAndChannel);
  }

  FutureOr<void> _fetchVideosWithLiveAndChannel(
      VideosWithLiveFetchDataEvent event,
      Emitter<VideosWithChannelState> emit) async {
    final List<VideosWithChannel> videosWithLiveAndChannel = [];
    emit(VideosStateLoading());

    await _clientRepo
        .fetchVideos(true)
        .onError((error, stackTrace) =>
            emit(VideosStateError(errorMessage: error.toString())))
        .then((videos) async {
      if (videos != null) {
        for (var inteirador in (videos as Video).items) {
          await _clientRepo
              .fetchChannel(inteirador.snippet.channelId)
              .onError((error, stackTrace) =>
                  VideosStateError(errorMessage: error.toString()))
              .then((it) {
            final channel = it as Channel;
            final video = VideosWithChannel(
                channelId: channel.items.first.id,
                descriptionVideo: inteirador.snippet.description,
                id: inteirador.id.videoId,
                publishedVideo: inteirador.snippet.publishedAt,
                subscriberCountChannel:
                    it.items.first.statistics.subscriberCount,
                thumbVideo: inteirador.snippet.thumbnails.high.url,
                thumbProfileChannel:
                    channel.items.first.snippet.thumbnails.medium.url,
                titleVideo: inteirador.snippet.title,
                videoId: inteirador.id.videoId);

            videosWithLiveAndChannel.add(video);
          });
        }
        emit(VideosWithLiveAndChannelLoaded(data: videosWithLiveAndChannel));
      }
    });
  }

  FutureOr<void> _fetchVideosWithChannel(VideosWithChannelEvent event,
      Emitter<VideosWithChannelState> emit) async {
    final List<VideosWithChannel> videosWithChannel = [];
    emit(VideosStateLoading());
    await _clientRepo.fetchVideos().onError((error, stackTrace) {
      emit(VideosStateError(errorMessage: error.toString()));
    }).then((videos) async {
      if (videos != null) {
        for (var inteirador in (videos as Video).items) {
          await _clientRepo
              .fetchChannel(inteirador.snippet.channelId)
              .onError((error, stackTrace) =>
                  VideosStateError(errorMessage: error.toString()))
              .then((it) {
            final channel = it as Channel;
            final video = VideosWithChannel(
                channelId: channel.items.first.id,
                descriptionVideo: inteirador.snippet.description,
                id: inteirador.id.videoId,
                publishedVideo: inteirador.snippet.publishedAt,
                subscriberCountChannel:
                    it.items.first.statistics.subscriberCount,
                thumbVideo: inteirador.snippet.thumbnails.high.url,
                thumbProfileChannel:
                    channel.items.first.snippet.thumbnails.medium.url,
                titleVideo: inteirador.snippet.title,
                videoId: inteirador.id.videoId);

            videosWithChannel.add(video);
          });
        }
        emit(VideosWithChannelLoaded(data: videosWithChannel));
      }
    });
  }
}
