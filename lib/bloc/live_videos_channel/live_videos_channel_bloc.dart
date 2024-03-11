import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:streaming_amazing_flutter/models/channel/channel.dart';
import 'package:streaming_amazing_flutter/models/videos/videos.dart';
import 'package:streaming_amazing_flutter/models/videos_with_channel.dart';
import 'package:streaming_amazing_flutter/repository/client_repository.dart';

part 'live_videos_channel_event.dart';
part 'live_videos_channel_state.dart';

class LiveVideosChannelBloc
    extends Bloc<LiveVideosChannelEvent, LiveVideosChannelState> {
  final _clientRepo = ClientRepository();

  LiveVideosChannelBloc() : super(LiveVideosChannelStateLoading()) {
    on<FetchLiveVideosChannelEvent>(_fetchVideosWithLiveAndChannel);
  }

  FutureOr<void> _fetchVideosWithLiveAndChannel(
      FetchLiveVideosChannelEvent event,
      Emitter<LiveVideosChannelState> emit) async {
    final List<VideosWithChannel> videosWithLiveAndChannel = [];
    emit(LiveVideosChannelStateLoading());

    await _clientRepo
        .fetchVideos(true)
        .onError((error, stackTrace) =>
            emit(LiveVideosChannelStateError(errorMessage: error.toString())))
        .then((videos) async {
      if (videos != null) {
        for (var inteirador in (videos as Video).items) {
          await _clientRepo
              .fetchChannel(inteirador.snippet.channelId)
              .onError((error, stackTrace) =>
                  LiveVideosChannelStateError(errorMessage: error.toString()))
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
        emit(LiveVideosChannelStateLoaded(data: videosWithLiveAndChannel));
      }
    });
  }
}
