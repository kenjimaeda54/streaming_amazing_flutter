part of 'subscription_bloc.dart';

@immutable
sealed class SubscriptionState extends Equatable {
  const SubscriptionState();

  @override
  List<Object> get props => [];
}

final class SubscriptionLoading extends SubscriptionState {}

final class SubscriptionLoaded extends SubscriptionState {
  final Subscription data;
  const SubscriptionLoaded({required this.data});

  @override
  List<Object> get props => [data];
}

final class SubscriptionError extends SubscriptionState {
  final String errorMessage;
  const SubscriptionError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
