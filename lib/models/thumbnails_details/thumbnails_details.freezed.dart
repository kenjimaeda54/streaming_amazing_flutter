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

ThumbnailsDetails _$ThumbnailsDetailsFromJson(Map<String, dynamic> json) {
  return _ThumbnailsDetails.fromJson(json);
}

/// @nodoc
mixin _$ThumbnailsDetails {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailsDetailsCopyWith<ThumbnailsDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailsDetailsCopyWith<$Res> {
  factory $ThumbnailsDetailsCopyWith(
          ThumbnailsDetails value, $Res Function(ThumbnailsDetails) then) =
      _$ThumbnailsDetailsCopyWithImpl<$Res, ThumbnailsDetails>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$ThumbnailsDetailsCopyWithImpl<$Res, $Val extends ThumbnailsDetails>
    implements $ThumbnailsDetailsCopyWith<$Res> {
  _$ThumbnailsDetailsCopyWithImpl(this._value, this._then);

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
abstract class _$$ThumbnailsDetailsImplCopyWith<$Res>
    implements $ThumbnailsDetailsCopyWith<$Res> {
  factory _$$ThumbnailsDetailsImplCopyWith(_$ThumbnailsDetailsImpl value,
          $Res Function(_$ThumbnailsDetailsImpl) then) =
      __$$ThumbnailsDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$ThumbnailsDetailsImplCopyWithImpl<$Res>
    extends _$ThumbnailsDetailsCopyWithImpl<$Res, _$ThumbnailsDetailsImpl>
    implements _$$ThumbnailsDetailsImplCopyWith<$Res> {
  __$$ThumbnailsDetailsImplCopyWithImpl(_$ThumbnailsDetailsImpl _value,
      $Res Function(_$ThumbnailsDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ThumbnailsDetailsImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThumbnailsDetailsImpl
    with DiagnosticableTreeMixin
    implements _ThumbnailsDetails {
  const _$ThumbnailsDetailsImpl({required this.url});

  factory _$ThumbnailsDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailsDetailsImplFromJson(json);

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThumbnailsDetails(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThumbnailsDetails'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailsDetailsImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailsDetailsImplCopyWith<_$ThumbnailsDetailsImpl> get copyWith =>
      __$$ThumbnailsDetailsImplCopyWithImpl<_$ThumbnailsDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailsDetailsImplToJson(
      this,
    );
  }
}

abstract class _ThumbnailsDetails implements ThumbnailsDetails {
  const factory _ThumbnailsDetails({required final String url}) =
      _$ThumbnailsDetailsImpl;

  factory _ThumbnailsDetails.fromJson(Map<String, dynamic> json) =
      _$ThumbnailsDetailsImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ThumbnailsDetailsImplCopyWith<_$ThumbnailsDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
