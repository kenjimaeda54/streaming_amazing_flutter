// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  List<ChannelItems> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call({List<ChannelItems> items});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

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
              as List<ChannelItems>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelImplCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$ChannelImplCopyWith(
          _$ChannelImpl value, $Res Function(_$ChannelImpl) then) =
      __$$ChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChannelItems> items});
}

/// @nodoc
class __$$ChannelImplCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$ChannelImpl>
    implements _$$ChannelImplCopyWith<$Res> {
  __$$ChannelImplCopyWithImpl(
      _$ChannelImpl _value, $Res Function(_$ChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ChannelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ChannelItems>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelImpl with DiagnosticableTreeMixin implements _Channel {
  const _$ChannelImpl({required final List<ChannelItems> items})
      : _items = items;

  factory _$ChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelImplFromJson(json);

  final List<ChannelItems> _items;
  @override
  List<ChannelItems> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Channel(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Channel'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      __$$ChannelImplCopyWithImpl<_$ChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelImplToJson(
      this,
    );
  }
}

abstract class _Channel implements Channel {
  const factory _Channel({required final List<ChannelItems> items}) =
      _$ChannelImpl;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$ChannelImpl.fromJson;

  @override
  List<ChannelItems> get items;
  @override
  @JsonKey(ignore: true)
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelItems _$ChannelItemsFromJson(Map<String, dynamic> json) {
  return _ChannelItems.fromJson(json);
}

/// @nodoc
mixin _$ChannelItems {
  String get id => throw _privateConstructorUsedError;
  Snippet get snippet => throw _privateConstructorUsedError;
  Statistics get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelItemsCopyWith<ChannelItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelItemsCopyWith<$Res> {
  factory $ChannelItemsCopyWith(
          ChannelItems value, $Res Function(ChannelItems) then) =
      _$ChannelItemsCopyWithImpl<$Res, ChannelItems>;
  @useResult
  $Res call({String id, Snippet snippet, Statistics statistics});

  $SnippetCopyWith<$Res> get snippet;
  $StatisticsCopyWith<$Res> get statistics;
}

/// @nodoc
class _$ChannelItemsCopyWithImpl<$Res, $Val extends ChannelItems>
    implements $ChannelItemsCopyWith<$Res> {
  _$ChannelItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? snippet = null,
    Object? statistics = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SnippetCopyWith<$Res> get snippet {
    return $SnippetCopyWith<$Res>(_value.snippet, (value) {
      return _then(_value.copyWith(snippet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatisticsCopyWith<$Res> get statistics {
    return $StatisticsCopyWith<$Res>(_value.statistics, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChannelItemsImplCopyWith<$Res>
    implements $ChannelItemsCopyWith<$Res> {
  factory _$$ChannelItemsImplCopyWith(
          _$ChannelItemsImpl value, $Res Function(_$ChannelItemsImpl) then) =
      __$$ChannelItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Snippet snippet, Statistics statistics});

  @override
  $SnippetCopyWith<$Res> get snippet;
  @override
  $StatisticsCopyWith<$Res> get statistics;
}

/// @nodoc
class __$$ChannelItemsImplCopyWithImpl<$Res>
    extends _$ChannelItemsCopyWithImpl<$Res, _$ChannelItemsImpl>
    implements _$$ChannelItemsImplCopyWith<$Res> {
  __$$ChannelItemsImplCopyWithImpl(
      _$ChannelItemsImpl _value, $Res Function(_$ChannelItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? snippet = null,
    Object? statistics = null,
  }) {
    return _then(_$ChannelItemsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelItemsImpl with DiagnosticableTreeMixin implements _ChannelItems {
  const _$ChannelItemsImpl(
      {required this.id, required this.snippet, required this.statistics});

  factory _$ChannelItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelItemsImplFromJson(json);

  @override
  final String id;
  @override
  final Snippet snippet;
  @override
  final Statistics statistics;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChannelItems(id: $id, snippet: $snippet, statistics: $statistics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChannelItems'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('snippet', snippet))
      ..add(DiagnosticsProperty('statistics', statistics));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelItemsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, snippet, statistics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelItemsImplCopyWith<_$ChannelItemsImpl> get copyWith =>
      __$$ChannelItemsImplCopyWithImpl<_$ChannelItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelItemsImplToJson(
      this,
    );
  }
}

abstract class _ChannelItems implements ChannelItems {
  const factory _ChannelItems(
      {required final String id,
      required final Snippet snippet,
      required final Statistics statistics}) = _$ChannelItemsImpl;

  factory _ChannelItems.fromJson(Map<String, dynamic> json) =
      _$ChannelItemsImpl.fromJson;

  @override
  String get id;
  @override
  Snippet get snippet;
  @override
  Statistics get statistics;
  @override
  @JsonKey(ignore: true)
  _$$ChannelItemsImplCopyWith<_$ChannelItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Snippet _$SnippetFromJson(Map<String, dynamic> json) {
  return _Snippet.fromJson(json);
}

/// @nodoc
mixin _$Snippet {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get customUrl => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  ThumbnailsVideo get thumbnails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetCopyWith<Snippet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetCopyWith<$Res> {
  factory $SnippetCopyWith(Snippet value, $Res Function(Snippet) then) =
      _$SnippetCopyWithImpl<$Res, Snippet>;
  @useResult
  $Res call(
      {String title,
      String description,
      String customUrl,
      String publishedAt,
      ThumbnailsVideo thumbnails});

  $ThumbnailsVideoCopyWith<$Res> get thumbnails;
}

/// @nodoc
class _$SnippetCopyWithImpl<$Res, $Val extends Snippet>
    implements $SnippetCopyWith<$Res> {
  _$SnippetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? customUrl = null,
    Object? publishedAt = null,
    Object? thumbnails = null,
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
      customUrl: null == customUrl
          ? _value.customUrl
          : customUrl // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailsVideo,
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
abstract class _$$SnippetImplCopyWith<$Res> implements $SnippetCopyWith<$Res> {
  factory _$$SnippetImplCopyWith(
          _$SnippetImpl value, $Res Function(_$SnippetImpl) then) =
      __$$SnippetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String customUrl,
      String publishedAt,
      ThumbnailsVideo thumbnails});

  @override
  $ThumbnailsVideoCopyWith<$Res> get thumbnails;
}

/// @nodoc
class __$$SnippetImplCopyWithImpl<$Res>
    extends _$SnippetCopyWithImpl<$Res, _$SnippetImpl>
    implements _$$SnippetImplCopyWith<$Res> {
  __$$SnippetImplCopyWithImpl(
      _$SnippetImpl _value, $Res Function(_$SnippetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? customUrl = null,
    Object? publishedAt = null,
    Object? thumbnails = null,
  }) {
    return _then(_$SnippetImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      customUrl: null == customUrl
          ? _value.customUrl
          : customUrl // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailsVideo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnippetImpl with DiagnosticableTreeMixin implements _Snippet {
  const _$SnippetImpl(
      {required this.title,
      required this.description,
      required this.customUrl,
      required this.publishedAt,
      required this.thumbnails});

  factory _$SnippetImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnippetImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String customUrl;
  @override
  final String publishedAt;
  @override
  final ThumbnailsVideo thumbnails;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Snippet(title: $title, description: $description, customUrl: $customUrl, publishedAt: $publishedAt, thumbnails: $thumbnails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Snippet'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('customUrl', customUrl))
      ..add(DiagnosticsProperty('publishedAt', publishedAt))
      ..add(DiagnosticsProperty('thumbnails', thumbnails));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnippetImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.customUrl, customUrl) ||
                other.customUrl == customUrl) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, customUrl, publishedAt, thumbnails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnippetImplCopyWith<_$SnippetImpl> get copyWith =>
      __$$SnippetImplCopyWithImpl<_$SnippetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnippetImplToJson(
      this,
    );
  }
}

abstract class _Snippet implements Snippet {
  const factory _Snippet(
      {required final String title,
      required final String description,
      required final String customUrl,
      required final String publishedAt,
      required final ThumbnailsVideo thumbnails}) = _$SnippetImpl;

  factory _Snippet.fromJson(Map<String, dynamic> json) = _$SnippetImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get customUrl;
  @override
  String get publishedAt;
  @override
  ThumbnailsVideo get thumbnails;
  @override
  @JsonKey(ignore: true)
  _$$SnippetImplCopyWith<_$SnippetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
mixin _$Statistics {
  String get subscriberCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res, Statistics>;
  @useResult
  $Res call({String subscriberCount});
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res, $Val extends Statistics>
    implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriberCount = null,
  }) {
    return _then(_value.copyWith(
      subscriberCount: null == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsImplCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$StatisticsImplCopyWith(
          _$StatisticsImpl value, $Res Function(_$StatisticsImpl) then) =
      __$$StatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subscriberCount});
}

/// @nodoc
class __$$StatisticsImplCopyWithImpl<$Res>
    extends _$StatisticsCopyWithImpl<$Res, _$StatisticsImpl>
    implements _$$StatisticsImplCopyWith<$Res> {
  __$$StatisticsImplCopyWithImpl(
      _$StatisticsImpl _value, $Res Function(_$StatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriberCount = null,
  }) {
    return _then(_$StatisticsImpl(
      subscriberCount: null == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsImpl with DiagnosticableTreeMixin implements _Statistics {
  const _$StatisticsImpl({required this.subscriberCount});

  factory _$StatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsImplFromJson(json);

  @override
  final String subscriberCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Statistics(subscriberCount: $subscriberCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Statistics'))
      ..add(DiagnosticsProperty('subscriberCount', subscriberCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsImpl &&
            (identical(other.subscriberCount, subscriberCount) ||
                other.subscriberCount == subscriberCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscriberCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      __$$StatisticsImplCopyWithImpl<_$StatisticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsImplToJson(
      this,
    );
  }
}

abstract class _Statistics implements Statistics {
  const factory _Statistics({required final String subscriberCount}) =
      _$StatisticsImpl;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$StatisticsImpl.fromJson;

  @override
  String get subscriberCount;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
