part of 'subscription_bloc.dart';

@immutable
sealed class SubscriptionEvent extends Equatable {
  const SubscriptionEvent();
}

class SubscriptionFetchDataEvent extends SubscriptionEvent {
  final String accessToken;
  const SubscriptionFetchDataEvent({required this.accessToken});

  @override
  List<Object> get props => [];
}
