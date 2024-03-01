// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thumbnails.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThumbnailsVideo _$ThumbnailsVideoFromJson(Map<String, dynamic> json) {
  return _ThumbnailsVideo.fromJson(json);
}

/// @nodoc
mixin _$ThumbnailsVideo {
  ThumbnailsDetails get medium => throw _privateConstructorUsedError;
  ThumbnailsDetails get high => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailsVideoCopyWith<ThumbnailsVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailsVideoCopyWith<$Res> {
  factory $ThumbnailsVideoCopyWith(
          ThumbnailsVideo value, $Res Function(ThumbnailsVideo) then) =
      _$ThumbnailsVideoCopyWithImpl<$Res, ThumbnailsVideo>;
  @useResult
  $Res call({ThumbnailsDetails medium, ThumbnailsDetails high});

  $ThumbnailsDetailsCopyWith<$Res> get medium;
  $ThumbnailsDetailsCopyWith<$Res> get high;
}

/// @nodoc
class _$ThumbnailsVideoCopyWithImpl<$Res, $Val extends ThumbnailsVideo>
    implements $ThumbnailsVideoCopyWith<$Res> {
  _$ThumbnailsVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
    Object? high = null,
  }) {
    return _then(_value.copyWith(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as ThumbnailsDetails,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as ThumbnailsDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailsDetailsCopyWith<$Res> get medium {
    return $ThumbnailsDetailsCopyWith<$Res>(_value.medium, (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailsDetailsCopyWith<$Res> get high {
    return $ThumbnailsDetailsCopyWith<$Res>(_value.high, (value) {
      return _then(_value.copyWith(high: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThumbnailsVideoImplCopyWith<$Res>
    implements $ThumbnailsVideoCopyWith<$Res> {
  factory _$$ThumbnailsVideoImplCopyWith(_$ThumbnailsVideoImpl value,
          $Res Function(_$ThumbnailsVideoImpl) then) =
      __$$ThumbnailsVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThumbnailsDetails medium, ThumbnailsDetails high});

  @override
  $ThumbnailsDetailsCopyWith<$Res> get medium;
  @override
  $ThumbnailsDetailsCopyWith<$Res> get high;
}

/// @nodoc
class __$$ThumbnailsVideoImplCopyWithImpl<$Res>
    extends _$ThumbnailsVideoCopyWithImpl<$Res, _$ThumbnailsVideoImpl>
    implements _$$ThumbnailsVideoImplCopyWith<$Res> {
  __$$ThumbnailsVideoImplCopyWithImpl(
      _$ThumbnailsVideoImpl _value, $Res Function(_$ThumbnailsVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
    Object? high = null,
  }) {
    return _then(_$ThumbnailsVideoImpl(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as ThumbnailsDetails,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as ThumbnailsDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThumbnailsVideoImpl
    with DiagnosticableTreeMixin
    implements _ThumbnailsVideo {
  const _$ThumbnailsVideoImpl({required this.medium, required this.high});

  factory _$ThumbnailsVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailsVideoImplFromJson(json);

  @override
  final ThumbnailsDetails medium;
  @override
  final ThumbnailsDetails high;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThumbnailsVideo(medium: $medium, high: $high)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThumbnailsVideo'))
      ..add(DiagnosticsProperty('medium', medium))
      ..add(DiagnosticsProperty('high', high));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailsVideoImpl &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.high, high) || other.high == high));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium, high);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailsVideoImplCopyWith<_$ThumbnailsVideoImpl> get copyWith =>
      __$$ThumbnailsVideoImplCopyWithImpl<_$ThumbnailsVideoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailsVideoImplToJson(
      this,
    );
  }
}

abstract class _ThumbnailsVideo implements ThumbnailsVideo {
  const factory _ThumbnailsVideo(
      {required final ThumbnailsDetails medium,
      required final ThumbnailsDetails high}) = _$ThumbnailsVideoImpl;

  factory _ThumbnailsVideo.fromJson(Map<String, dynamic> json) =
      _$ThumbnailsVideoImpl.fromJson;

  @override
  ThumbnailsDetails get medium;
  @override
  ThumbnailsDetails get high;
  @override
  @JsonKey(ignore: true)
  _$$ThumbnailsVideoImplCopyWith<_$ThumbnailsVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
