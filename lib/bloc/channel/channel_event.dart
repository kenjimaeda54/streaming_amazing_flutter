part of 'channel_bloc.dart';

@immutable
sealed class ChannelEvent extends Equatable {
  const ChannelEvent();
}

class FetchChannelEvent extends ChannelEvent {
  final String channelId;
  const FetchChannelEvent({required this.channelId});

  @override
  List<Object> get props => [];
}
