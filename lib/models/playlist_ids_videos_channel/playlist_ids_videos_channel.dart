import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_ids_videos_channel.freezed.dart';
part 'playlist_ids_videos_channel.g.dart';

@freezed
class PlaylistIdsVideosChannel with _$PlaylistIdsVideosChannel {
  const factory PlaylistIdsVideosChannel(
      {required List<IdsVideosPlaylist> items}) = _PlaylistIdsVideosChannel;

  factory PlaylistIdsVideosChannel.fromJson(Map<String, Object?> json) =>
      _$PlaylistIdsVideosChannelFromJson(json);
}

@freezed
class IdsVideosPlaylist with _$IdsVideosPlaylist {
  const factory IdsVideosPlaylist({required String id}) = _IdsVideosPlaylist;

  factory IdsVideosPlaylist.fromJson(Map<String, Object?> json) =>
      _$IdsVideosPlaylistFromJson(json);
}
