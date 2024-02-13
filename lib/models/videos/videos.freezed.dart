// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  List<ItemsVideo> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call({List<ItemsVideo> items});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

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
              as List<ItemsVideo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemsVideo> items});
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$VideoImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsVideo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl with DiagnosticableTreeMixin implements _Video {
  const _$VideoImpl({required final List<ItemsVideo> items}) : _items = items;

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  final List<ItemsVideo> _items;
  @override
  List<ItemsVideo> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Video(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Video'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  const factory _Video({required final List<ItemsVideo> items}) = _$VideoImpl;

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  List<ItemsVideo> get items;
  @override
  @JsonKey(ignore: true)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsVideo _$ItemsVideoFromJson(Map<String, dynamic> json) {
  return _ItemsVideo.fromJson(json);
}

/// @nodoc
mixin _$ItemsVideo {
  SnippetVideo get snippet => throw _privateConstructorUsedError;
  IdVideo get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsVideoCopyWith<ItemsVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsVideoCopyWith<$Res> {
  factory $ItemsVideoCopyWith(
          ItemsVideo value, $Res Function(ItemsVideo) then) =
      _$ItemsVideoCopyWithImpl<$Res, ItemsVideo>;
  @useResult
  $Res call({SnippetVideo snippet, IdVideo id});

  $SnippetVideoCopyWith<$Res> get snippet;
  $IdVideoCopyWith<$Res> get id;
}

/// @nodoc
class _$ItemsVideoCopyWithImpl<$Res, $Val extends ItemsVideo>
    implements $ItemsVideoCopyWith<$Res> {
  _$ItemsVideoCopyWithImpl(this._value, this._then);

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
              as SnippetVideo,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdVideo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SnippetVideoCopyWith<$Res> get snippet {
    return $SnippetVideoCopyWith<$Res>(_value.snippet, (value) {
      return _then(_value.copyWith(snippet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdVideoCopyWith<$Res> get id {
    return $IdVideoCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsVideoImplCopyWith<$Res>
    implements $ItemsVideoCopyWith<$Res> {
  factory _$$ItemsVideoImplCopyWith(
          _$ItemsVideoImpl value, $Res Function(_$ItemsVideoImpl) then) =
      __$$ItemsVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SnippetVideo snippet, IdVideo id});

  @override
  $SnippetVideoCopyWith<$Res> get snippet;
  @override
  $IdVideoCopyWith<$Res> get id;
}

/// @nodoc
class __$$ItemsVideoImplCopyWithImpl<$Res>
    extends _$ItemsVideoCopyWithImpl<$Res, _$ItemsVideoImpl>
    implements _$$ItemsVideoImplCopyWith<$Res> {
  __$$ItemsVideoImplCopyWithImpl(
      _$ItemsVideoImpl _value, $Res Function(_$ItemsVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snippet = null,
    Object? id = null,
  }) {
    return _then(_$ItemsVideoImpl(
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as SnippetVideo,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdVideo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsVideoImpl with DiagnosticableTreeMixin implements _ItemsVideo {
  const _$ItemsVideoImpl({required this.snippet, required this.id});

  factory _$ItemsVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsVideoImplFromJson(json);

  @override
  final SnippetVideo snippet;
  @override
  final IdVideo id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsVideo(snippet: $snippet, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemsVideo'))
      ..add(DiagnosticsProperty('snippet', snippet))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsVideoImpl &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, snippet, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsVideoImplCopyWith<_$ItemsVideoImpl> get copyWith =>
      __$$ItemsVideoImplCopyWithImpl<_$ItemsVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsVideoImplToJson(
      this,
    );
  }
}

abstract class _ItemsVideo implements ItemsVideo {
  const factory _ItemsVideo(
      {required final SnippetVideo snippet,
      required final IdVideo id}) = _$ItemsVideoImpl;

  factory _ItemsVideo.fromJson(Map<String, dynamic> json) =
      _$ItemsVideoImpl.fromJson;

  @override
  SnippetVideo get snippet;
  @override
  IdVideo get id;
  @override
  @JsonKey(ignore: true)
  _$$ItemsVideoImplCopyWith<_$ItemsVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnippetVideo _$SnippetVideoFromJson(Map<String, dynamic> json) {
  return _SnippetVideo.fromJson(json);
}

/// @nodoc
mixin _$SnippetVideo {
  String get publishedAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ThumbnailsVideo get thumbnails => throw _privateConstructorUsedError;
  String get channelTitle => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetVideoCopyWith<SnippetVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetVideoCopyWith<$Res> {
  factory $SnippetVideoCopyWith(
          SnippetVideo value, $Res Function(SnippetVideo) then) =
      _$SnippetVideoCopyWithImpl<$Res, SnippetVideo>;
  @useResult
  $Res call(
      {String publishedAt,
      String title,
      String description,
      ThumbnailsVideo thumbnails,
      String channelTitle,
      String channelId});

  $ThumbnailsVideoCopyWith<$Res> get thumbnails;
}

/// @nodoc
class _$SnippetVideoCopyWithImpl<$Res, $Val extends SnippetVideo>
    implements $SnippetVideoCopyWith<$Res> {
  _$SnippetVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publishedAt = null,
    Object? title = null,
    Object? description = null,
    Object? thumbnails = null,
    Object? channelTitle = null,
    Object? channelId = null,
  }) {
    return _then(_value.copyWith(
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailsVideo,
      channelTitle: null == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailsVideoCopyWith<$Res> get thumbnails {
    return $ThumbnailsVideoCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnippetVideoImplCopyWith<$Res>
    implements $SnippetVideoCopyWith<$Res> {
  factory _$$SnippetVideoImplCopyWith(
          _$SnippetVideoImpl value, $Res Function(_$SnippetVideoImpl) then) =
      __$$SnippetVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String publishedAt,
      String title,
      String description,
      ThumbnailsVideo thumbnails,
      String channelTitle,
      String channelId});

  @override
  $ThumbnailsVideoCopyWith<$Res> get thumbnails;
}

/// @nodoc
class __$$SnippetVideoImplCopyWithImpl<$Res>
    extends _$SnippetVideoCopyWithImpl<$Res, _$SnippetVideoImpl>
    implements _$$SnippetVideoImplCopyWith<$Res> {
  __$$SnippetVideoImplCopyWithImpl(
      _$SnippetVideoImpl _value, $Res Function(_$SnippetVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publishedAt = null,
    Object? title = null,
    Object? description = null,
    Object? thumbnails = null,
    Object? channelTitle = null,
    Object? channelId = null,
  }) {
    return _then(_$SnippetVideoImpl(
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailsVideo,
      channelTitle: null == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnippetVideoImpl with DiagnosticableTreeMixin implements _SnippetVideo {
  const _$SnippetVideoImpl(
      {required this.publishedAt,
      required this.title,
      required this.description,
      required this.thumbnails,
      required this.channelTitle,
      required this.channelId});

  factory _$SnippetVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnippetVideoImplFromJson(json);

  @override
  final String publishedAt;
  @override
  final String title;
  @override
  final String description;
  @override
  final ThumbnailsVideo thumbnails;
  @override
  final String channelTitle;
  @override
  final String channelId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SnippetVideo(publishedAt: $publishedAt, title: $title, description: $description, thumbnails: $thumbnails, channelTitle: $channelTitle, channelId: $channelId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SnippetVideo'))
      ..add(DiagnosticsProperty('publishedAt', publishedAt))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('thumbnails', thumbnails))
      ..add(DiagnosticsProperty('channelTitle', channelTitle))
      ..add(DiagnosticsProperty('channelId', channelId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnippetVideoImpl &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.channelTitle, channelTitle) ||
                other.channelTitle == channelTitle) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publishedAt, title, description,
      thumbnails, channelTitle, channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnippetVideoImplCopyWith<_$SnippetVideoImpl> get copyWith =>
      __$$SnippetVideoImplCopyWithImpl<_$SnippetVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnippetVideoImplToJson(
      this,
    );
  }
}

abstract class _SnippetVideo implements SnippetVideo {
  const factory _SnippetVideo(
      {required final String publishedAt,
      required final String title,
      required final String description,
      required final ThumbnailsVideo thumbnails,
      required final String channelTitle,
      required final String channelId}) = _$SnippetVideoImpl;

  factory _SnippetVideo.fromJson(Map<String, dynamic> json) =
      _$SnippetVideoImpl.fromJson;

  @override
  String get publishedAt;
  @override
  String get title;
  @override
  String get description;
  @override
  ThumbnailsVideo get thumbnails;
  @override
  String get channelTitle;
  @override
  String get channelId;
  @override
  @JsonKey(ignore: true)
  _$$SnippetVideoImplCopyWith<_$SnippetVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdVideo _$IdVideoFromJson(Map<String, dynamic> json) {
  return _IdVideo.fromJson(json);
}

/// @nodoc
mixin _$IdVideo {
  String get kind => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdVideoCopyWith<IdVideo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdVideoCopyWith<$Res> {
  factory $IdVideoCopyWith(IdVideo value, $Res Function(IdVideo) then) =
      _$IdVideoCopyWithImpl<$Res, IdVideo>;
  @useResult
  $Res call({String kind, String videoId});
}

/// @nodoc
class _$IdVideoCopyWithImpl<$Res, $Val extends IdVideo>
    implements $IdVideoCopyWith<$Res> {
  _$IdVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? videoId = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdVideoImplCopyWith<$Res> implements $IdVideoCopyWith<$Res> {
  factory _$$IdVideoImplCopyWith(
          _$IdVideoImpl value, $Res Function(_$IdVideoImpl) then) =
      __$$IdVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kind, String videoId});
}

/// @nodoc
class __$$IdVideoImplCopyWithImpl<$Res>
    extends _$IdVideoCopyWithImpl<$Res, _$IdVideoImpl>
    implements _$$IdVideoImplCopyWith<$Res> {
  __$$IdVideoImplCopyWithImpl(
      _$IdVideoImpl _value, $Res Function(_$IdVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? videoId = null,
  }) {
    return _then(_$IdVideoImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdVideoImpl with DiagnosticableTreeMixin implements _IdVideo {
  const _$IdVideoImpl({required this.kind, required this.videoId});

  factory _$IdVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdVideoImplFromJson(json);

  @override
  final String kind;
  @override
  final String videoId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IdVideo(kind: $kind, videoId: $videoId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IdVideo'))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('videoId', videoId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdVideoImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdVideoImplCopyWith<_$IdVideoImpl> get copyWith =>
      __$$IdVideoImplCopyWithImpl<_$IdVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdVideoImplToJson(
      this,
    );
  }
}

abstract class _IdVideo implements IdVideo {
  const factory _IdVideo(
      {required final String kind,
      required final String videoId}) = _$IdVideoImpl;

  factory _IdVideo.fromJson(Map<String, dynamic> json) = _$IdVideoImpl.fromJson;

  @override
  String get kind;
  @override
  String get videoId;
  @override
  @JsonKey(ignore: true)
  _$$IdVideoImplCopyWith<_$IdVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
