// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_ids_videos_channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistIdsVideosChannelImpl _$$PlaylistIdsVideosChannelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaylistIdsVideosChannelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => IdsVideosPlaylist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaylistIdsVideosChannelImplToJson(
        _$PlaylistIdsVideosChannelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$IdsVideosPlaylistImpl _$$IdsVideosPlaylistImplFromJson(
        Map<String, dynamic> json) =>
    _$IdsVideosPlaylistImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$IdsVideosPlaylistImplToJson(
        _$IdsVideosPlaylistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
