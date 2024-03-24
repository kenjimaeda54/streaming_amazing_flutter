// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoDetails _$VideoDetailsFromJson(Map<String, dynamic> json) {
  return _VideoDetails.fromJson(json);
}

/// @nodoc
mixin _$VideoDetails {
  List<ItemsVideoDetails> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDetailsCopyWith<VideoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDetailsCopyWith<$Res> {
  factory $VideoDetailsCopyWith(
          VideoDetails value, $Res Function(VideoDetails) then) =
      _$VideoDetailsCopyWithImpl<$Res, VideoDetails>;
  @useResult
  $Res call({List<ItemsVideoDetails> items});
}

/// @nodoc
class _$VideoDetailsCopyWithImpl<$Res, $Val extends VideoDetails>
    implements $VideoDetailsCopyWith<$Res> {
  _$VideoDetailsCopyWithImpl(this._value, this._then);

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
              as List<ItemsVideoDetails>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoDetailsImplCopyWith<$Res>
    implements $VideoDetailsCopyWith<$Res> {
  factory _$$VideoDetailsImplCopyWith(
          _$VideoDetailsImpl value, $Res Function(_$VideoDetailsImpl) then) =
      __$$VideoDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemsVideoDetails> items});
}

/// @nodoc
class __$$VideoDetailsImplCopyWithImpl<$Res>
    extends _$VideoDetailsCopyWithImpl<$Res, _$VideoDetailsImpl>
    implements _$$VideoDetailsImplCopyWith<$Res> {
  __$$VideoDetailsImplCopyWithImpl(
      _$VideoDetailsImpl _value, $Res Function(_$VideoDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$VideoDetailsImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsVideoDetails>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoDetailsImpl implements _VideoDetails {
  const _$VideoDetailsImpl({required final List<ItemsVideoDetails> items})
      : _items = items;

  factory _$VideoDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoDetailsImplFromJson(json);

  final List<ItemsVideoDetails> _items;
  @override
  List<ItemsVideoDetails> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'VideoDetails(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoDetailsImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoDetailsImplCopyWith<_$VideoDetailsImpl> get copyWith =>
      __$$VideoDetailsImplCopyWithImpl<_$VideoDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoDetailsImplToJson(
      this,
    );
  }
}

abstract class _VideoDetails implements VideoDetails {
  const factory _VideoDetails({required final List<ItemsVideoDetails> items}) =
      _$VideoDetailsImpl;

  factory _VideoDetails.fromJson(Map<String, dynamic> json) =
      _$VideoDetailsImpl.fromJson;

  @override
  List<ItemsVideoDetails> get items;
  @override
  @JsonKey(ignore: true)
  _$$VideoDetailsImplCopyWith<_$VideoDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsVideoDetails _$ItemsVideoDetailsFromJson(Map<String, dynamic> json) {
  return _ItemsVideoDetails.fromJson(json);
}

/// @nodoc
mixin _$ItemsVideoDetails {
  SnippetVideo get snippet => throw _privateConstructorUsedError;
  StaticsVideoDetails get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsVideoDetailsCopyWith<ItemsVideoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsVideoDetailsCopyWith<$Res> {
  factory $ItemsVideoDetailsCopyWith(
          ItemsVideoDetails value, $Res Function(ItemsVideoDetails) then) =
      _$ItemsVideoDetailsCopyWithImpl<$Res, ItemsVideoDetails>;
  @useResult
  $Res call({SnippetVideo snippet, StaticsVideoDetails statistics});

  $SnippetVideoCopyWith<$Res> get snippet;
  $StaticsVideoDetailsCopyWith<$Res> get statistics;
}

/// @nodoc
class _$ItemsVideoDetailsCopyWithImpl<$Res, $Val extends ItemsVideoDetails>
    implements $ItemsVideoDetailsCopyWith<$Res> {
  _$ItemsVideoDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snippet = null,
    Object? statistics = null,
  }) {
    return _then(_value.copyWith(
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as SnippetVideo,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as StaticsVideoDetails,
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
  $StaticsVideoDetailsCopyWith<$Res> get statistics {
    return $StaticsVideoDetailsCopyWith<$Res>(_value.statistics, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsVideoDetailsImplCopyWith<$Res>
    implements $ItemsVideoDetailsCopyWith<$Res> {
  factory _$$ItemsVideoDetailsImplCopyWith(_$ItemsVideoDetailsImpl value,
          $Res Function(_$ItemsVideoDetailsImpl) then) =
      __$$ItemsVideoDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SnippetVideo snippet, StaticsVideoDetails statistics});

  @override
  $SnippetVideoCopyWith<$Res> get snippet;
  @override
  $StaticsVideoDetailsCopyWith<$Res> get statistics;
}

/// @nodoc
class __$$ItemsVideoDetailsImplCopyWithImpl<$Res>
    extends _$ItemsVideoDetailsCopyWithImpl<$Res, _$ItemsVideoDetailsImpl>
    implements _$$ItemsVideoDetailsImplCopyWith<$Res> {
  __$$ItemsVideoDetailsImplCopyWithImpl(_$ItemsVideoDetailsImpl _value,
      $Res Function(_$ItemsVideoDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snippet = null,
    Object? statistics = null,
  }) {
    return _then(_$ItemsVideoDetailsImpl(
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as SnippetVideo,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as StaticsVideoDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsVideoDetailsImpl implements _ItemsVideoDetails {
  const _$ItemsVideoDetailsImpl(
      {required this.snippet, required this.statistics});

  factory _$ItemsVideoDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsVideoDetailsImplFromJson(json);

  @override
  final SnippetVideo snippet;
  @override
  final StaticsVideoDetails statistics;

  @override
  String toString() {
    return 'ItemsVideoDetails(snippet: $snippet, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsVideoDetailsImpl &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, snippet, statistics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsVideoDetailsImplCopyWith<_$ItemsVideoDetailsImpl> get copyWith =>
      __$$ItemsVideoDetailsImplCopyWithImpl<_$ItemsVideoDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsVideoDetailsImplToJson(
      this,
    );
  }
}

abstract class _ItemsVideoDetails implements ItemsVideoDetails {
  const factory _ItemsVideoDetails(
      {required final SnippetVideo snippet,
      required final StaticsVideoDetails statistics}) = _$ItemsVideoDetailsImpl;

  factory _ItemsVideoDetails.fromJson(Map<String, dynamic> json) =
      _$ItemsVideoDetailsImpl.fromJson;

  @override
  SnippetVideo get snippet;
  @override
  StaticsVideoDetails get statistics;
  @override
  @JsonKey(ignore: true)
  _$$ItemsVideoDetailsImplCopyWith<_$ItemsVideoDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StaticsVideoDetails _$StaticsVideoDetailsFromJson(Map<String, dynamic> json) {
  return _StaticsVideoDetails.fromJson(json);
}

/// @nodoc
mixin _$StaticsVideoDetails {
  String get viewCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaticsVideoDetailsCopyWith<StaticsVideoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticsVideoDetailsCopyWith<$Res> {
  factory $StaticsVideoDetailsCopyWith(
          StaticsVideoDetails value, $Res Function(StaticsVideoDetails) then) =
      _$StaticsVideoDetailsCopyWithImpl<$Res, StaticsVideoDetails>;
  @useResult
  $Res call({String viewCount});
}

/// @nodoc
class _$StaticsVideoDetailsCopyWithImpl<$Res, $Val extends StaticsVideoDetails>
    implements $StaticsVideoDetailsCopyWith<$Res> {
  _$StaticsVideoDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = null,
  }) {
    return _then(_value.copyWith(
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaticsVideoDetailsImplCopyWith<$Res>
    implements $StaticsVideoDetailsCopyWith<$Res> {
  factory _$$StaticsVideoDetailsImplCopyWith(_$StaticsVideoDetailsImpl value,
          $Res Function(_$StaticsVideoDetailsImpl) then) =
      __$$StaticsVideoDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String viewCount});
}

/// @nodoc
class __$$StaticsVideoDetailsImplCopyWithImpl<$Res>
    extends _$StaticsVideoDetailsCopyWithImpl<$Res, _$StaticsVideoDetailsImpl>
    implements _$$StaticsVideoDetailsImplCopyWith<$Res> {
  __$$StaticsVideoDetailsImplCopyWithImpl(_$StaticsVideoDetailsImpl _value,
      $Res Function(_$StaticsVideoDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = null,
  }) {
    return _then(_$StaticsVideoDetailsImpl(
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaticsVideoDetailsImpl implements _StaticsVideoDetails {
  const _$StaticsVideoDetailsImpl({required this.viewCount});

  factory _$StaticsVideoDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaticsVideoDetailsImplFromJson(json);

  @override
  final String viewCount;

  @override
  String toString() {
    return 'StaticsVideoDetails(viewCount: $viewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticsVideoDetailsImpl &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, viewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaticsVideoDetailsImplCopyWith<_$StaticsVideoDetailsImpl> get copyWith =>
      __$$StaticsVideoDetailsImplCopyWithImpl<_$StaticsVideoDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaticsVideoDetailsImplToJson(
      this,
    );
  }
}

abstract class _StaticsVideoDetails implements StaticsVideoDetails {
  const factory _StaticsVideoDetails({required final String viewCount}) =
      _$StaticsVideoDetailsImpl;

  factory _StaticsVideoDetails.fromJson(Map<String, dynamic> json) =
      _$StaticsVideoDetailsImpl.fromJson;

  @override
  String get viewCount;
  @override
  @JsonKey(ignore: true)
  _$$StaticsVideoDetailsImplCopyWith<_$StaticsVideoDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
