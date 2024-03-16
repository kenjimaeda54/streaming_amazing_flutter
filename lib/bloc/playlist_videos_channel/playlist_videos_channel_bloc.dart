import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:streaming_amazing_flutter/models/playlist_channel/playlist_channel.dart';
import 'package:streaming_amazing_flutter/models/playlist_ids_videos_channel/playlist_ids_videos_channel.dart';
import 'package:streaming_amazing_flutter/repository/client_repository.dart';

part 'playlist_videos_channel_event.dart';
part 'playlist_videos_channel_state.dart';

class PlaylistVideosChannelBloc
    extends Bloc<PlayListVideosChannelEvent, PlayListVideosChannelState> {
  final _clientRepo = ClientRepository();

  PlaylistVideosChannelBloc() : super(PlayListVideosChannelStateLoading()) {
    on<PlayListVideosFetchDataEvent>(_fetchPlayListChannel);
  }

  FutureOr<void> _fetchPlayListChannel(PlayListVideosFetchDataEvent event,
      Emitter<PlayListVideosChannelState> emit) async {
    List<ItemsPlayList> snippetPlayList = [];

    emit(PlayListVideosChannelStateLoading());

    await _clientRepo
        .fetchIdsPlayListVideosByChannel(event.channelId)
        .onError((error, stackTrace) =>
            emit(PlayListVideosChannelError(errorMessage: error.toString())))
        .then((playListIds) async {
      var ids = playListIds as PlaylistIdsVideosChannel;
      for (var inteirador in (ids.items)) {
        await _clientRepo
            .fetchPlayListChannel(inteirador.id)
            .onError((error, stackTrace) => emit(
                PlayListVideosChannelError(errorMessage: error.toString())))
            .then((it) {
          final playlist = it as PlayListChannel;
          final itemPlaylist = ItemsPlayList(
              snippet: playlist.items.first.snippet,
              id: playlist.items.first.id);
          snippetPlayList.add(itemPlaylist);
        });
      }
      emit(PlayListVideosChannelLoaded(data: snippetPlayList));
    });
  }
}
