part of 'channel_bloc.dart';

@immutable
sealed class ChannelState extends Equatable {
  const ChannelState();

  @override
  List<Object> get props => [];
}

final class ChannelStateLoading extends ChannelState {}

final class ChannelStateLoaded extends ChannelState {
  final Channel data;
  const ChannelStateLoaded({required this.data});

  @override
  List<Object> get props => [data];
}

final class ChannelStateError extends ChannelState {
  final String errorMessage;
  const ChannelStateError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
