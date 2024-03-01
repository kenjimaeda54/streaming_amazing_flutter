part of 'subscription_bloc.dart';

@immutable
sealed class SubscriptionState {}

final class SubscriptionInitial extends SubscriptionState {}

final class SubscriptionLoading extends SubscriptionState {}

final class SubscriptionLoaded extends SubscriptionState {
  final Subscription data;
  SubscriptionLoaded({required this.data});
}

final class SubscriptionError extends SubscriptionState {
  final String errorMessage;
  SubscriptionError({required this.errorMessage});
}
