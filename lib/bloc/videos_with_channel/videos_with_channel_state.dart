part of 'videos_with_channel_bloc.dart';

//consultar aqui a maneira correta de fazer
//https://github.com/felangel/bloc/blob/master/examples/flutter_shopping_cart/lib/catalog/bloc/catalog_state.dart

@immutable
sealed class VideosWithChannelState extends Equatable {
  const VideosWithChannelState();

  @override
  List<Object> get props => [];
}

//carregando
final class VideosStateLoading extends VideosWithChannelState {}

//finalizado
final class VideosWithChannelLoaded extends VideosWithChannelState {
  final List<VideosWithChannel> data;
  const VideosWithChannelLoaded({required this.data});

  @override
  List<Object> get props => [data];
}

final class VideosStateError extends VideosWithChannelState {
  final String errorMessage;
  const VideosStateError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
