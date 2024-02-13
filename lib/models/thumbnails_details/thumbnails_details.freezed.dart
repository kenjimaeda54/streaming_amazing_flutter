// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thumbnails_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThumbnailsDetailsVideo _$ThumbnailsDetailsVideoFromJson(
    Map<String, dynamic> json) {
  return _ThumbnailsDetailsVideo.fromJson(json);
}

/// @nodoc
mixin _$ThumbnailsDetailsVideo {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailsDetailsVideoCopyWith<ThumbnailsDetailsVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailsDetailsVideoCopyWith<$Res> {
  factory $ThumbnailsDetailsVideoCopyWith(ThumbnailsDetailsVideo value,
          $Res Function(ThumbnailsDetailsVideo) then) =
      _$ThumbnailsDetailsVideoCopyWithImpl<$Res, ThumbnailsDetailsVideo>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$ThumbnailsDetailsVideoCopyWithImpl<$Res,
        $Val extends ThumbnailsDetailsVideo>
    implements $ThumbnailsDetailsVideoCopyWith<$Res> {
  _$ThumbnailsDetailsVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThumbnailsDetailsVideoImplCopyWith<$Res>
    implements $ThumbnailsDetailsVideoCopyWith<$Res> {
  factory _$$ThumbnailsDetailsVideoImplCopyWith(
          _$ThumbnailsDetailsVideoImpl value,
          $Res Function(_$ThumbnailsDetailsVideoImpl) then) =
      __$$ThumbnailsDetailsVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$ThumbnailsDetailsVideoImplCopyWithImpl<$Res>
    extends _$ThumbnailsDetailsVideoCopyWithImpl<$Res,
        _$ThumbnailsDetailsVideoImpl>
    implements _$$ThumbnailsDetailsVideoImplCopyWith<$Res> {
  __$$ThumbnailsDetailsVideoImplCopyWithImpl(
      _$ThumbnailsDetailsVideoImpl _value,
      $Res Function(_$ThumbnailsDetailsVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ThumbnailsDetailsVideoImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThumbnailsDetailsVideoImpl
    with DiagnosticableTreeMixin
    implements _ThumbnailsDetailsVideo {
  const _$ThumbnailsDetailsVideoImpl({required this.url});

  factory _$ThumbnailsDetailsVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailsDetailsVideoImplFromJson(json);

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThumbnailsDetailsVideo(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThumbnailsDetailsVideo'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailsDetailsVideoImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailsDetailsVideoImplCopyWith<_$ThumbnailsDetailsVideoImpl>
      get copyWith => __$$ThumbnailsDetailsVideoImplCopyWithImpl<
          _$ThumbnailsDetailsVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailsDetailsVideoImplToJson(
      this,
    );
  }
}

abstract class _ThumbnailsDetailsVideo implements ThumbnailsDetailsVideo {
  const factory _ThumbnailsDetailsVideo({required final String url}) =
      _$ThumbnailsDetailsVideoImpl;

  factory _ThumbnailsDetailsVideo.fromJson(Map<String, dynamic> json) =
      _$ThumbnailsDetailsVideoImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ThumbnailsDetailsVideoImplCopyWith<_$ThumbnailsDetailsVideoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
