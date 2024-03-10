// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayListChannel _$PlayListChannelFromJson(Map<String, dynamic> json) {
  return _PlayListChannel.fromJson(json);
}

/// @nodoc
mixin _$PlayListChannel {
  List<ItemsPlayList> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayListChannelCopyWith<PlayListChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListChannelCopyWith<$Res> {
  factory $PlayListChannelCopyWith(
          PlayListChannel value, $Res Function(PlayListChannel) then) =
      _$PlayListChannelCopyWithImpl<$Res, PlayListChannel>;
  @useResult
  $Res call({List<ItemsPlayList> items});
}

/// @nodoc
class _$PlayListChannelCopyWithImpl<$Res, $Val extends PlayListChannel>
    implements $PlayListChannelCopyWith<$Res> {
  _$PlayListChannelCopyWithImpl(this._value, this._then);

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
              as List<ItemsPlayList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayListChannelImplCopyWith<$Res>
    implements $PlayListChannelCopyWith<$Res> {
  factory _$$PlayListChannelImplCopyWith(_$PlayListChannelImpl value,
          $Res Function(_$PlayListChannelImpl) then) =
      __$$PlayListChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemsPlayList> items});
}

/// @nodoc
class __$$PlayListChannelImplCopyWithImpl<$Res>
    extends _$PlayListChannelCopyWithImpl<$Res, _$PlayListChannelImpl>
    implements _$$PlayListChannelImplCopyWith<$Res> {
  __$$PlayListChannelImplCopyWithImpl(
      _$PlayListChannelImpl _value, $Res Function(_$PlayListChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$PlayListChannelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsPlayList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayListChannelImpl implements _PlayListChannel {
  const _$PlayListChannelImpl({required final List<ItemsPlayList> items})
      : _items = items;

  factory _$PlayListChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayListChannelImplFromJson(json);

  final List<ItemsPlayList> _items;
  @override
  List<ItemsPlayList> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PlayListChannel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayListChannelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayListChannelImplCopyWith<_$PlayListChannelImpl> get copyWith =>
      __$$PlayListChannelImplCopyWithImpl<_$PlayListChannelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayListChannelImplToJson(
      this,
    );
  }
}

abstract class _PlayListChannel implements PlayListChannel {
  const factory _PlayListChannel({required final List<ItemsPlayList> items}) =
      _$PlayListChannelImpl;

  factory _PlayListChannel.fromJson(Map<String, dynamic> json) =
      _$PlayListChannelImpl.fromJson;

  @override
  List<ItemsPlayList> get items;
  @override
  @JsonKey(ignore: true)
  _$$PlayListChannelImplCopyWith<_$PlayListChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsPlayList _$ItemsPlayListFromJson(Map<String, dynamic> json) {
  return _ItemsPlayList.fromJson(json);
}

/// @nodoc
mixin _$ItemsPlayList {
  SnippetPlayList get snippet => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsPlayListCopyWith<ItemsPlayList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsPlayListCopyWith<$Res> {
  factory $ItemsPlayListCopyWith(
          ItemsPlayList value, $Res Function(ItemsPlayList) then) =
      _$ItemsPlayListCopyWithImpl<$Res, ItemsPlayList>;
  @useResult
  $Res call({SnippetPlayList snippet, String id});

  $SnippetPlayListCopyWith<$Res> get snippet;
}

/// @nodoc
class _$ItemsPlayListCopyWithImpl<$Res, $Val extends ItemsPlayList>
    implements $ItemsPlayListCopyWith<$Res> {
  _$ItemsPlayListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snippet = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as SnippetPlayList,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SnippetPlayListCopyWith<$Res> get snippet {
    return $SnippetPlayListCopyWith<$Res>(_value.snippet, (value) {
      return _then(_value.copyWith(snippet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsPlayListImplCopyWith<$Res>
    implements $ItemsPlayListCopyWith<$Res> {
  factory _$$ItemsPlayListImplCopyWith(
          _$ItemsPlayListImpl value, $Res Function(_$ItemsPlayListImpl) then) =
      __$$ItemsPlayListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SnippetPlayList snippet, String id});

  @override
  $SnippetPlayListCopyWith<$Res> get snippet;
}

/// @nodoc
class __$$ItemsPlayListImplCopyWithImpl<$Res>
    extends _$ItemsPlayListCopyWithImpl<$Res, _$ItemsPlayListImpl>
    implements _$$ItemsPlayListImplCopyWith<$Res> {
  __$$ItemsPlayListImplCopyWithImpl(
      _$ItemsPlayListImpl _value, $Res Function(_$ItemsPlayListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snippet = null,
    Object? id = null,
  }) {
    return _then(_$ItemsPlayListImpl(
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as SnippetPlayList,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsPlayListImpl implements _ItemsPlayList {
  const _$ItemsPlayListImpl({required this.snippet, required this.id});

  factory _$ItemsPlayListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsPlayListImplFromJson(json);

  @override
  final SnippetPlayList snippet;
  @override
  final String id;

  @override
  String toString() {
    return 'ItemsPlayList(snippet: $snippet, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsPlayListImpl &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, snippet, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsPlayListImplCopyWith<_$ItemsPlayListImpl> get copyWith =>
      __$$ItemsPlayListImplCopyWithImpl<_$ItemsPlayListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsPlayListImplToJson(
      this,
    );
  }
}

abstract class _ItemsPlayList implements ItemsPlayList {
  const factory _ItemsPlayList(
      {required final SnippetPlayList snippet,
      required final String id}) = _$ItemsPlayListImpl;

  factory _ItemsPlayList.fromJson(Map<String, dynamic> json) =
      _$ItemsPlayListImpl.fromJson;

  @override
  SnippetPlayList get snippet;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ItemsPlayListImplCopyWith<_$ItemsPlayListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnippetPlayList _$SnippetPlayListFromJson(Map<String, dynamic> json) {
  return _SnippetPlayList.fromJson(json);
}

/// @nodoc
mixin _$SnippetPlayList {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  ThumbnailsVideo get thumbnails => throw _privateConstructorUsedError;
  String get channelTitle => throw _privateConstructorUsedError;
  ResourceIdPlayList get resourceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetPlayListCopyWith<SnippetPlayList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetPlayListCopyWith<$Res> {
  factory $SnippetPlayListCopyWith(
          SnippetPlayList value, $Res Function(SnippetPlayList) then) =
      _$SnippetPlayListCopyWithImpl<$Res, SnippetPlayList>;
  @useResult
  $Res call(
      {String title,
      String description,
      String publishedAt,
      ThumbnailsVideo thumbnails,
      String channelTitle,
      ResourceIdPlayList resourceId});

  $ThumbnailsVideoCopyWith<$Res> get thumbnails;
  $ResourceIdPlayListCopyWith<$Res> get resourceId;
}

/// @nodoc
class _$SnippetPlayListCopyWithImpl<$Res, $Val extends SnippetPlayList>
    implements $SnippetPlayListCopyWith<$Res> {
  _$SnippetPlayListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? publishedAt = null,
    Object? thumbnails = null,
    Object? channelTitle = null,
    Object? resourceId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailsVideo,
      channelTitle: null == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as ResourceIdPlayList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailsVideoCopyWith<$Res> get thumbnails {
    return $ThumbnailsVideoCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourceIdPlayListCopyWith<$Res> get resourceId {
    return $ResourceIdPlayListCopyWith<$Res>(_value.resourceId, (value) {
      return _then(_value.copyWith(resourceId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnippetPlayListImplCopyWith<$Res>
    implements $SnippetPlayListCopyWith<$Res> {
  factory _$$SnippetPlayListImplCopyWith(_$SnippetPlayListImpl value,
          $Res Function(_$SnippetPlayListImpl) then) =
      __$$SnippetPlayListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String publishedAt,
      ThumbnailsVideo thumbnails,
      String channelTitle,
      ResourceIdPlayList resourceId});

  @override
  $ThumbnailsVideoCopyWith<$Res> get thumbnails;
  @override
  $ResourceIdPlayListCopyWith<$Res> get resourceId;
}

/// @nodoc
class __$$SnippetPlayListImplCopyWithImpl<$Res>
    extends _$SnippetPlayListCopyWithImpl<$Res, _$SnippetPlayListImpl>
    implements _$$SnippetPlayListImplCopyWith<$Res> {
  __$$SnippetPlayListImplCopyWithImpl(
      _$SnippetPlayListImpl _value, $Res Function(_$SnippetPlayListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? publishedAt = null,
    Object? thumbnails = null,
    Object? channelTitle = null,
    Object? resourceId = null,
  }) {
    return _then(_$SnippetPlayListImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailsVideo,
      channelTitle: null == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as ResourceIdPlayList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnippetPlayListImpl implements _SnippetPlayList {
  const _$SnippetPlayListImpl(
      {required this.title,
      required this.description,
      required this.publishedAt,
      required this.thumbnails,
      required this.channelTitle,
      required this.resourceId});

  factory _$SnippetPlayListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnippetPlayListImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String publishedAt;
  @override
  final ThumbnailsVideo thumbnails;
  @override
  final String channelTitle;
  @override
  final ResourceIdPlayList resourceId;

  @override
  String toString() {
    return 'SnippetPlayList(title: $title, description: $description, publishedAt: $publishedAt, thumbnails: $thumbnails, channelTitle: $channelTitle, resourceId: $resourceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnippetPlayListImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.channelTitle, channelTitle) ||
                other.channelTitle == channelTitle) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, publishedAt,
      thumbnails, channelTitle, resourceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnippetPlayListImplCopyWith<_$SnippetPlayListImpl> get copyWith =>
      __$$SnippetPlayListImplCopyWithImpl<_$SnippetPlayListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnippetPlayListImplToJson(
      this,
    );
  }
}

abstract class _SnippetPlayList implements SnippetPlayList {
  const factory _SnippetPlayList(
      {required final String title,
      required final String description,
      required final String publishedAt,
      required final ThumbnailsVideo thumbnails,
      required final String channelTitle,
      required final ResourceIdPlayList resourceId}) = _$SnippetPlayListImpl;

  factory _SnippetPlayList.fromJson(Map<String, dynamic> json) =
      _$SnippetPlayListImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get publishedAt;
  @override
  ThumbnailsVideo get thumbnails;
  @override
  String get channelTitle;
  @override
  ResourceIdPlayList get resourceId;
  @override
  @JsonKey(ignore: true)
  _$$SnippetPlayListImplCopyWith<_$SnippetPlayListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResourceIdPlayList _$ResourceIdPlayListFromJson(Map<String, dynamic> json) {
  return _ResourceIdPlayList.fromJson(json);
}

/// @nodoc
mixin _$ResourceIdPlayList {
  String get videoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceIdPlayListCopyWith<ResourceIdPlayList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceIdPlayListCopyWith<$Res> {
  factory $ResourceIdPlayListCopyWith(
          ResourceIdPlayList value, $Res Function(ResourceIdPlayList) then) =
      _$ResourceIdPlayListCopyWithImpl<$Res, ResourceIdPlayList>;
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class _$ResourceIdPlayListCopyWithImpl<$Res, $Val extends ResourceIdPlayList>
    implements $ResourceIdPlayListCopyWith<$Res> {
  _$ResourceIdPlayListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_value.copyWith(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceIdPlayListImplCopyWith<$Res>
    implements $ResourceIdPlayListCopyWith<$Res> {
  factory _$$ResourceIdPlayListImplCopyWith(_$ResourceIdPlayListImpl value,
          $Res Function(_$ResourceIdPlayListImpl) then) =
      __$$ResourceIdPlayListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$ResourceIdPlayListImplCopyWithImpl<$Res>
    extends _$ResourceIdPlayListCopyWithImpl<$Res, _$ResourceIdPlayListImpl>
    implements _$$ResourceIdPlayListImplCopyWith<$Res> {
  __$$ResourceIdPlayListImplCopyWithImpl(_$ResourceIdPlayListImpl _value,
      $Res Function(_$ResourceIdPlayListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$ResourceIdPlayListImpl(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceIdPlayListImpl implements _ResourceIdPlayList {
  const _$ResourceIdPlayListImpl({required this.videoId});

  factory _$ResourceIdPlayListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceIdPlayListImplFromJson(json);

  @override
  final String videoId;

  @override
  String toString() {
    return 'ResourceIdPlayList(videoId: $videoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceIdPlayListImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceIdPlayListImplCopyWith<_$ResourceIdPlayListImpl> get copyWith =>
      __$$ResourceIdPlayListImplCopyWithImpl<_$ResourceIdPlayListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceIdPlayListImplToJson(
      this,
    );
  }
}

abstract class _ResourceIdPlayList implements ResourceIdPlayList {
  const factory _ResourceIdPlayList({required final String videoId}) =
      _$ResourceIdPlayListImpl;

  factory _ResourceIdPlayList.fromJson(Map<String, dynamic> json) =
      _$ResourceIdPlayListImpl.fromJson;

  @override
  String get videoId;
  @override
  @JsonKey(ignore: true)
  _$$ResourceIdPlayListImplCopyWith<_$ResourceIdPlayListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
