// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  List<ItemsSubscription> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call({List<ItemsSubscription> items});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

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
              as List<ItemsSubscription>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
          _$SubscriptionImpl value, $Res Function(_$SubscriptionImpl) then) =
      __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemsSubscription> items});
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
      _$SubscriptionImpl _value, $Res Function(_$SubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$SubscriptionImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsSubscription>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionImpl with DiagnosticableTreeMixin implements _Subscription {
  const _$SubscriptionImpl({required final List<ItemsSubscription> items})
      : _items = items;

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  final List<ItemsSubscription> _items;
  @override
  List<ItemsSubscription> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Subscription(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Subscription'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(
      this,
    );
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription({required final List<ItemsSubscription> items}) =
      _$SubscriptionImpl;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  List<ItemsSubscription> get items;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsSubscription _$ItemsSubscriptionFromJson(Map<String, dynamic> json) {
  return _ItemsSubscription.fromJson(json);
}

/// @nodoc
mixin _$ItemsSubscription {
  String get id => throw _privateConstructorUsedError;
  SnippetSubscription get snippet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsSubscriptionCopyWith<ItemsSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsSubscriptionCopyWith<$Res> {
  factory $ItemsSubscriptionCopyWith(
          ItemsSubscription value, $Res Function(ItemsSubscription) then) =
      _$ItemsSubscriptionCopyWithImpl<$Res, ItemsSubscription>;
  @useResult
  $Res call({String id, SnippetSubscription snippet});

  $SnippetSubscriptionCopyWith<$Res> get snippet;
}

/// @nodoc
class _$ItemsSubscriptionCopyWithImpl<$Res, $Val extends ItemsSubscription>
    implements $ItemsSubscriptionCopyWith<$Res> {
  _$ItemsSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? snippet = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as SnippetSubscription,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SnippetSubscriptionCopyWith<$Res> get snippet {
    return $SnippetSubscriptionCopyWith<$Res>(_value.snippet, (value) {
      return _then(_value.copyWith(snippet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsSubscriptionImplCopyWith<$Res>
    implements $ItemsSubscriptionCopyWith<$Res> {
  factory _$$ItemsSubscriptionImplCopyWith(_$ItemsSubscriptionImpl value,
          $Res Function(_$ItemsSubscriptionImpl) then) =
      __$$ItemsSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, SnippetSubscription snippet});

  @override
  $SnippetSubscriptionCopyWith<$Res> get snippet;
}

/// @nodoc
class __$$ItemsSubscriptionImplCopyWithImpl<$Res>
    extends _$ItemsSubscriptionCopyWithImpl<$Res, _$ItemsSubscriptionImpl>
    implements _$$ItemsSubscriptionImplCopyWith<$Res> {
  __$$ItemsSubscriptionImplCopyWithImpl(_$ItemsSubscriptionImpl _value,
      $Res Function(_$ItemsSubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? snippet = null,
  }) {
    return _then(_$ItemsSubscriptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as SnippetSubscription,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsSubscriptionImpl
    with DiagnosticableTreeMixin
    implements _ItemsSubscription {
  const _$ItemsSubscriptionImpl({required this.id, required this.snippet});

  factory _$ItemsSubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsSubscriptionImplFromJson(json);

  @override
  final String id;
  @override
  final SnippetSubscription snippet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsSubscription(id: $id, snippet: $snippet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemsSubscription'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('snippet', snippet));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsSubscriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.snippet, snippet) || other.snippet == snippet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, snippet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsSubscriptionImplCopyWith<_$ItemsSubscriptionImpl> get copyWith =>
      __$$ItemsSubscriptionImplCopyWithImpl<_$ItemsSubscriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _ItemsSubscription implements ItemsSubscription {
  const factory _ItemsSubscription(
      {required final String id,
      required final SnippetSubscription snippet}) = _$ItemsSubscriptionImpl;

  factory _ItemsSubscription.fromJson(Map<String, dynamic> json) =
      _$ItemsSubscriptionImpl.fromJson;

  @override
  String get id;
  @override
  SnippetSubscription get snippet;
  @override
  @JsonKey(ignore: true)
  _$$ItemsSubscriptionImplCopyWith<_$ItemsSubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnippetSubscription _$SnippetSubscriptionFromJson(Map<String, dynamic> json) {
  return _SnippetSubscription.fromJson(json);
}

/// @nodoc
mixin _$SnippetSubscription {
  String get title => throw _privateConstructorUsedError;
  ThumbnailSubscription get thumbnails => throw _privateConstructorUsedError;
  ResourceId get resourceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetSubscriptionCopyWith<SnippetSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetSubscriptionCopyWith<$Res> {
  factory $SnippetSubscriptionCopyWith(
          SnippetSubscription value, $Res Function(SnippetSubscription) then) =
      _$SnippetSubscriptionCopyWithImpl<$Res, SnippetSubscription>;
  @useResult
  $Res call(
      {String title, ThumbnailSubscription thumbnails, ResourceId resourceId});

  $ThumbnailSubscriptionCopyWith<$Res> get thumbnails;
  $ResourceIdCopyWith<$Res> get resourceId;
}

/// @nodoc
class _$SnippetSubscriptionCopyWithImpl<$Res, $Val extends SnippetSubscription>
    implements $SnippetSubscriptionCopyWith<$Res> {
  _$SnippetSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnails = null,
    Object? resourceId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSubscription,
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as ResourceId,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailSubscriptionCopyWith<$Res> get thumbnails {
    return $ThumbnailSubscriptionCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourceIdCopyWith<$Res> get resourceId {
    return $ResourceIdCopyWith<$Res>(_value.resourceId, (value) {
      return _then(_value.copyWith(resourceId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnippetSubscriptionImplCopyWith<$Res>
    implements $SnippetSubscriptionCopyWith<$Res> {
  factory _$$SnippetSubscriptionImplCopyWith(_$SnippetSubscriptionImpl value,
          $Res Function(_$SnippetSubscriptionImpl) then) =
      __$$SnippetSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, ThumbnailSubscription thumbnails, ResourceId resourceId});

  @override
  $ThumbnailSubscriptionCopyWith<$Res> get thumbnails;
  @override
  $ResourceIdCopyWith<$Res> get resourceId;
}

/// @nodoc
class __$$SnippetSubscriptionImplCopyWithImpl<$Res>
    extends _$SnippetSubscriptionCopyWithImpl<$Res, _$SnippetSubscriptionImpl>
    implements _$$SnippetSubscriptionImplCopyWith<$Res> {
  __$$SnippetSubscriptionImplCopyWithImpl(_$SnippetSubscriptionImpl _value,
      $Res Function(_$SnippetSubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnails = null,
    Object? resourceId = null,
  }) {
    return _then(_$SnippetSubscriptionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSubscription,
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as ResourceId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnippetSubscriptionImpl
    with DiagnosticableTreeMixin
    implements _SnippetSubscription {
  const _$SnippetSubscriptionImpl(
      {required this.title,
      required this.thumbnails,
      required this.resourceId});

  factory _$SnippetSubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnippetSubscriptionImplFromJson(json);

  @override
  final String title;
  @override
  final ThumbnailSubscription thumbnails;
  @override
  final ResourceId resourceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SnippetSubscription(title: $title, thumbnails: $thumbnails, resourceId: $resourceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SnippetSubscription'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('thumbnails', thumbnails))
      ..add(DiagnosticsProperty('resourceId', resourceId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnippetSubscriptionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, thumbnails, resourceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnippetSubscriptionImplCopyWith<_$SnippetSubscriptionImpl> get copyWith =>
      __$$SnippetSubscriptionImplCopyWithImpl<_$SnippetSubscriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnippetSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _SnippetSubscription implements SnippetSubscription {
  const factory _SnippetSubscription(
      {required final String title,
      required final ThumbnailSubscription thumbnails,
      required final ResourceId resourceId}) = _$SnippetSubscriptionImpl;

  factory _SnippetSubscription.fromJson(Map<String, dynamic> json) =
      _$SnippetSubscriptionImpl.fromJson;

  @override
  String get title;
  @override
  ThumbnailSubscription get thumbnails;
  @override
  ResourceId get resourceId;
  @override
  @JsonKey(ignore: true)
  _$$SnippetSubscriptionImplCopyWith<_$SnippetSubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThumbnailSubscription _$ThumbnailSubscriptionFromJson(
    Map<String, dynamic> json) {
  return _ThumbnailSubscription.fromJson(json);
}

/// @nodoc
mixin _$ThumbnailSubscription {
  ThumbnailsDetailsVideo get medium => throw _privateConstructorUsedError;
  ThumbnailsDetailsVideo get high => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailSubscriptionCopyWith<ThumbnailSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailSubscriptionCopyWith<$Res> {
  factory $ThumbnailSubscriptionCopyWith(ThumbnailSubscription value,
          $Res Function(ThumbnailSubscription) then) =
      _$ThumbnailSubscriptionCopyWithImpl<$Res, ThumbnailSubscription>;
  @useResult
  $Res call({ThumbnailsDetailsVideo medium, ThumbnailsDetailsVideo high});

  $ThumbnailsDetailsVideoCopyWith<$Res> get medium;
  $ThumbnailsDetailsVideoCopyWith<$Res> get high;
}

/// @nodoc
class _$ThumbnailSubscriptionCopyWithImpl<$Res,
        $Val extends ThumbnailSubscription>
    implements $ThumbnailSubscriptionCopyWith<$Res> {
  _$ThumbnailSubscriptionCopyWithImpl(this._value, this._then);

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
              as ThumbnailsDetailsVideo,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as ThumbnailsDetailsVideo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailsDetailsVideoCopyWith<$Res> get medium {
    return $ThumbnailsDetailsVideoCopyWith<$Res>(_value.medium, (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailsDetailsVideoCopyWith<$Res> get high {
    return $ThumbnailsDetailsVideoCopyWith<$Res>(_value.high, (value) {
      return _then(_value.copyWith(high: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThumbnailSubscriptionImplCopyWith<$Res>
    implements $ThumbnailSubscriptionCopyWith<$Res> {
  factory _$$ThumbnailSubscriptionImplCopyWith(
          _$ThumbnailSubscriptionImpl value,
          $Res Function(_$ThumbnailSubscriptionImpl) then) =
      __$$ThumbnailSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThumbnailsDetailsVideo medium, ThumbnailsDetailsVideo high});

  @override
  $ThumbnailsDetailsVideoCopyWith<$Res> get medium;
  @override
  $ThumbnailsDetailsVideoCopyWith<$Res> get high;
}

/// @nodoc
class __$$ThumbnailSubscriptionImplCopyWithImpl<$Res>
    extends _$ThumbnailSubscriptionCopyWithImpl<$Res,
        _$ThumbnailSubscriptionImpl>
    implements _$$ThumbnailSubscriptionImplCopyWith<$Res> {
  __$$ThumbnailSubscriptionImplCopyWithImpl(_$ThumbnailSubscriptionImpl _value,
      $Res Function(_$ThumbnailSubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
    Object? high = null,
  }) {
    return _then(_$ThumbnailSubscriptionImpl(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as ThumbnailsDetailsVideo,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as ThumbnailsDetailsVideo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThumbnailSubscriptionImpl
    with DiagnosticableTreeMixin
    implements _ThumbnailSubscription {
  const _$ThumbnailSubscriptionImpl({required this.medium, required this.high});

  factory _$ThumbnailSubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailSubscriptionImplFromJson(json);

  @override
  final ThumbnailsDetailsVideo medium;
  @override
  final ThumbnailsDetailsVideo high;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThumbnailSubscription(medium: $medium, high: $high)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThumbnailSubscription'))
      ..add(DiagnosticsProperty('medium', medium))
      ..add(DiagnosticsProperty('high', high));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailSubscriptionImpl &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.high, high) || other.high == high));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium, high);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailSubscriptionImplCopyWith<_$ThumbnailSubscriptionImpl>
      get copyWith => __$$ThumbnailSubscriptionImplCopyWithImpl<
          _$ThumbnailSubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _ThumbnailSubscription implements ThumbnailSubscription {
  const factory _ThumbnailSubscription(
          {required final ThumbnailsDetailsVideo medium,
          required final ThumbnailsDetailsVideo high}) =
      _$ThumbnailSubscriptionImpl;

  factory _ThumbnailSubscription.fromJson(Map<String, dynamic> json) =
      _$ThumbnailSubscriptionImpl.fromJson;

  @override
  ThumbnailsDetailsVideo get medium;
  @override
  ThumbnailsDetailsVideo get high;
  @override
  @JsonKey(ignore: true)
  _$$ThumbnailSubscriptionImplCopyWith<_$ThumbnailSubscriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResourceId _$ResourceIdFromJson(Map<String, dynamic> json) {
  return _ResourceId.fromJson(json);
}

/// @nodoc
mixin _$ResourceId {
  String get channelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceIdCopyWith<ResourceId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceIdCopyWith<$Res> {
  factory $ResourceIdCopyWith(
          ResourceId value, $Res Function(ResourceId) then) =
      _$ResourceIdCopyWithImpl<$Res, ResourceId>;
  @useResult
  $Res call({String channelId});
}

/// @nodoc
class _$ResourceIdCopyWithImpl<$Res, $Val extends ResourceId>
    implements $ResourceIdCopyWith<$Res> {
  _$ResourceIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
  }) {
    return _then(_value.copyWith(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceIdImplCopyWith<$Res>
    implements $ResourceIdCopyWith<$Res> {
  factory _$$ResourceIdImplCopyWith(
          _$ResourceIdImpl value, $Res Function(_$ResourceIdImpl) then) =
      __$$ResourceIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String channelId});
}

/// @nodoc
class __$$ResourceIdImplCopyWithImpl<$Res>
    extends _$ResourceIdCopyWithImpl<$Res, _$ResourceIdImpl>
    implements _$$ResourceIdImplCopyWith<$Res> {
  __$$ResourceIdImplCopyWithImpl(
      _$ResourceIdImpl _value, $Res Function(_$ResourceIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
  }) {
    return _then(_$ResourceIdImpl(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceIdImpl with DiagnosticableTreeMixin implements _ResourceId {
  const _$ResourceIdImpl({required this.channelId});

  factory _$ResourceIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceIdImplFromJson(json);

  @override
  final String channelId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResourceId(channelId: $channelId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResourceId'))
      ..add(DiagnosticsProperty('channelId', channelId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceIdImpl &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceIdImplCopyWith<_$ResourceIdImpl> get copyWith =>
      __$$ResourceIdImplCopyWithImpl<_$ResourceIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceIdImplToJson(
      this,
    );
  }
}

abstract class _ResourceId implements ResourceId {
  const factory _ResourceId({required final String channelId}) =
      _$ResourceIdImpl;

  factory _ResourceId.fromJson(Map<String, dynamic> json) =
      _$ResourceIdImpl.fromJson;

  @override
  String get channelId;
  @override
  @JsonKey(ignore: true)
  _$$ResourceIdImplCopyWith<_$ResourceIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
