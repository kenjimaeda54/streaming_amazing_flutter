// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_ids_videos_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaylistIdsVideosChannel _$PlaylistIdsVideosChannelFromJson(
    Map<String, dynamic> json) {
  return _PlaylistIdsVideosChannel.fromJson(json);
}

/// @nodoc
mixin _$PlaylistIdsVideosChannel {
  List<IdsVideosPlaylist> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistIdsVideosChannelCopyWith<PlaylistIdsVideosChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistIdsVideosChannelCopyWith<$Res> {
  factory $PlaylistIdsVideosChannelCopyWith(PlaylistIdsVideosChannel value,
          $Res Function(PlaylistIdsVideosChannel) then) =
      _$PlaylistIdsVideosChannelCopyWithImpl<$Res, PlaylistIdsVideosChannel>;
  @useResult
  $Res call({List<IdsVideosPlaylist> items});
}

/// @nodoc
class _$PlaylistIdsVideosChannelCopyWithImpl<$Res,
        $Val extends PlaylistIdsVideosChannel>
    implements $PlaylistIdsVideosChannelCopyWith<$Res> {
  _$PlaylistIdsVideosChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<IdsVideosPlaylist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistIdsVideosChannelImplCopyWith<$Res>
    implements $PlaylistIdsVideosChannelCopyWith<$Res> {
  factory _$$PlaylistIdsVideosChannelImplCopyWith(
          _$PlaylistIdsVideosChannelImpl value,
          $Res Function(_$PlaylistIdsVideosChannelImpl) then) =
      __$$PlaylistIdsVideosChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<IdsVideosPlaylist> items});
}

/// @nodoc
class __$$PlaylistIdsVideosChannelImplCopyWithImpl<$Res>
    extends _$PlaylistIdsVideosChannelCopyWithImpl<$Res,
        _$PlaylistIdsVideosChannelImpl>
    implements _$$PlaylistIdsVideosChannelImplCopyWith<$Res> {
  __$$PlaylistIdsVideosChannelImplCopyWithImpl(
      _$PlaylistIdsVideosChannelImpl _value,
      $Res Function(_$PlaylistIdsVideosChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$PlaylistIdsVideosChannelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<IdsVideosPlaylist>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistIdsVideosChannelImpl implements _PlaylistIdsVideosChannel {
  const _$PlaylistIdsVideosChannelImpl(
      {required final List<IdsVideosPlaylist> items})
      : _items = items;

  factory _$PlaylistIdsVideosChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistIdsVideosChannelImplFromJson(json);

  final List<IdsVideosPlaylist> _items;
  @override
  List<IdsVideosPlaylist> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PlaylistIdsVideosChannel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistIdsVideosChannelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistIdsVideosChannelImplCopyWith<_$PlaylistIdsVideosChannelImpl>
      get copyWith => __$$PlaylistIdsVideosChannelImplCopyWithImpl<
          _$PlaylistIdsVideosChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistIdsVideosChannelImplToJson(
      this,
    );
  }
}

abstract class _PlaylistIdsVideosChannel implements PlaylistIdsVideosChannel {
  const factory _PlaylistIdsVideosChannel(
          {required final List<IdsVideosPlaylist> items}) =
      _$PlaylistIdsVideosChannelImpl;

  factory _PlaylistIdsVideosChannel.fromJson(Map<String, dynamic> json) =
      _$PlaylistIdsVideosChannelImpl.fromJson;

  @override
  List<IdsVideosPlaylist> get items;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistIdsVideosChannelImplCopyWith<_$PlaylistIdsVideosChannelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IdsVideosPlaylist _$IdsVideosPlaylistFromJson(Map<String, dynamic> json) {
  return _IdsVideosPlaylist.fromJson(json);
}

/// @nodoc
mixin _$IdsVideosPlaylist {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdsVideosPlaylistCopyWith<IdsVideosPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdsVideosPlaylistCopyWith<$Res> {
  factory $IdsVideosPlaylistCopyWith(
          IdsVideosPlaylist value, $Res Function(IdsVideosPlaylist) then) =
      _$IdsVideosPlaylistCopyWithImpl<$Res, IdsVideosPlaylist>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$IdsVideosPlaylistCopyWithImpl<$Res, $Val extends IdsVideosPlaylist>
    implements $IdsVideosPlaylistCopyWith<$Res> {
  _$IdsVideosPlaylistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdsVideosPlaylistImplCopyWith<$Res>
    implements $IdsVideosPlaylistCopyWith<$Res> {
  factory _$$IdsVideosPlaylistImplCopyWith(_$IdsVideosPlaylistImpl value,
          $Res Function(_$IdsVideosPlaylistImpl) then) =
      __$$IdsVideosPlaylistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$IdsVideosPlaylistImplCopyWithImpl<$Res>
    extends _$IdsVideosPlaylistCopyWithImpl<$Res, _$IdsVideosPlaylistImpl>
    implements _$$IdsVideosPlaylistImplCopyWith<$Res> {
  __$$IdsVideosPlaylistImplCopyWithImpl(_$IdsVideosPlaylistImpl _value,
      $Res Function(_$IdsVideosPlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$IdsVideosPlaylistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdsVideosPlaylistImpl implements _IdsVideosPlaylist {
  const _$IdsVideosPlaylistImpl({required this.id});

  factory _$IdsVideosPlaylistImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdsVideosPlaylistImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'IdsVideosPlaylist(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdsVideosPlaylistImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdsVideosPlaylistImplCopyWith<_$IdsVideosPlaylistImpl> get copyWith =>
      __$$IdsVideosPlaylistImplCopyWithImpl<_$IdsVideosPlaylistImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdsVideosPlaylistImplToJson(
      this,
    );
  }
}

abstract class _IdsVideosPlaylist implements IdsVideosPlaylist {
  const factory _IdsVideosPlaylist({required final String id}) =
      _$IdsVideosPlaylistImpl;

  factory _IdsVideosPlaylist.fromJson(Map<String, dynamic> json) =
      _$IdsVideosPlaylistImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$IdsVideosPlaylistImplCopyWith<_$IdsVideosPlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
