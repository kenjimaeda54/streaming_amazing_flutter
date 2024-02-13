part of 'subscription_bloc.dart';

@immutable
abstract class SubscriptionEvent {}

class SubscriptionFetchDataEvent extends SubscriptionEvent {
  final String accessToken;
  SubscriptionFetchDataEvent({required this.accessToken});
}
