import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:streaming_amazing_flutter/models/channel/channel.dart';
import 'package:streaming_amazing_flutter/repository/client_repository.dart';

part 'channel_event.dart';
part 'channel_state.dart';

class ChannelBloc extends Bloc<ChannelEvent, ChannelState> {
  final _clientRepo = ClientRepository();

  ChannelBloc() : super(ChannelStateLoading()) {
    on<FetchChannelEvent>(_fetchChannel);
  }

  FutureOr<void> _fetchChannel(
      FetchChannelEvent event, Emitter<ChannelState> emit) async {
    emit(ChannelStateLoading());
    await _clientRepo
        .fetchChannel(event.channelId)
        .catchError(
            (error) => emit(ChannelStateError(errorMessage: error.toString())))
        .then((data) => emit(ChannelStateLoaded(data: data)));
  }
}
