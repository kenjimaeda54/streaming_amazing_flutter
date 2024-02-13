import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:streaming_amazing_flutter/models/subscription/subscription.dart';
import 'package:streaming_amazing_flutter/repository/client_repository.dart';

part 'subscription_event.dart';
part 'subscription_state.dart';

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  final _clientRepo = ClientRepository();

  SubscriptionBloc() : super(SubscriptionInitial()) {
    on<SubscriptionFetchDataEvent>(_fetchSubscription);
  }

  FutureOr<void> _fetchSubscription(
      SubscriptionFetchDataEvent event, Emitter<SubscriptionState> emit) async {
    emit(SubscriptionInitial());
    emit(SubscriptionLoading());
    await _clientRepo
        .fetchSubscription("34343")
        .onError(
            (error, _) => SubscriptionError(errorMessage: error.toString()))
        .then((value) {
      emit(SubscriptionLoaded(data: value));
    });
  }
}