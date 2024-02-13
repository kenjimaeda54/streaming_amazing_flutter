part of 'subscription_bloc.dart';

@immutable
abstract class SubscriptionState {}

class SubscriptionInitial extends SubscriptionState {}

class SubscriptionLoading extends SubscriptionState {}

class SubscriptionLoaded extends SubscriptionState {
  final Subscription data;
  SubscriptionLoaded({required this.data});
}

class SubscriptionError extends SubscriptionState {
  final String errorMessage;
  SubscriptionError({required this.errorMessage});
}
