// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
class _$ActivityTearOff {
  const _$ActivityTearOff();

  _Activity call(
      {required String id,
      required DateTime createdAt,
      required DateTime updatedAt,
      required int bidCount,
      required List<String> services,
      required ActivityStatus status,
      required ActivityProvider? provider}) {
    return _Activity(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      bidCount: bidCount,
      services: services,
      status: status,
      provider: provider,
    );
  }

  Activity fromJson(Map<String, Object> json) {
    return Activity.fromJson(json);
  }
}

/// @nodoc
const $Activity = _$ActivityTearOff();

/// @nodoc
mixin _$Activity {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get bidCount => throw _privateConstructorUsedError;
  List<String> get services => throw _privateConstructorUsedError;
  ActivityStatus get status => throw _privateConstructorUsedError;
  ActivityProvider? get provider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      int bidCount,
      List<String> services,
      ActivityStatus status,
      ActivityProvider? provider});

  $ActivityProviderCopyWith<$Res>? get provider;
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res> implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  final Activity _value;
  // ignore: unused_field
  final $Res Function(Activity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bidCount = freezed,
    Object? services = freezed,
    Object? status = freezed,
    Object? provider = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bidCount: bidCount == freezed
          ? _value.bidCount
          : bidCount // ignore: cast_nullable_to_non_nullable
              as int,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as ActivityProvider?,
    ));
  }

  @override
  $ActivityProviderCopyWith<$Res>? get provider {
    if (_value.provider == null) {
      return null;
    }

    return $ActivityProviderCopyWith<$Res>(_value.provider!, (value) {
      return _then(_value.copyWith(provider: value));
    });
  }
}

/// @nodoc
abstract class _$ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) then) =
      __$ActivityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      int bidCount,
      List<String> services,
      ActivityStatus status,
      ActivityProvider? provider});

  @override
  $ActivityProviderCopyWith<$Res>? get provider;
}

/// @nodoc
class __$ActivityCopyWithImpl<$Res> extends _$ActivityCopyWithImpl<$Res>
    implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(_Activity _value, $Res Function(_Activity) _then)
      : super(_value, (v) => _then(v as _Activity));

  @override
  _Activity get _value => super._value as _Activity;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bidCount = freezed,
    Object? services = freezed,
    Object? status = freezed,
    Object? provider = freezed,
  }) {
    return _then(_Activity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bidCount: bidCount == freezed
          ? _value.bidCount
          : bidCount // ignore: cast_nullable_to_non_nullable
              as int,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as ActivityProvider?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Activity extends _Activity {
  const _$_Activity(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.bidCount,
      required this.services,
      required this.status,
      required this.provider})
      : super._();

  factory _$_Activity.fromJson(Map<String, dynamic> json) =>
      _$_$_ActivityFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int bidCount;
  @override
  final List<String> services;
  @override
  final ActivityStatus status;
  @override
  final ActivityProvider? provider;

  @override
  String toString() {
    return 'Activity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, bidCount: $bidCount, services: $services, status: $status, provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Activity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.bidCount, bidCount) ||
                const DeepCollectionEquality()
                    .equals(other.bidCount, bidCount)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(bidCount) ^
      const DeepCollectionEquality().hash(services) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(provider);

  @JsonKey(ignore: true)
  @override
  _$ActivityCopyWith<_Activity> get copyWith =>
      __$ActivityCopyWithImpl<_Activity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActivityToJson(this);
  }
}

abstract class _Activity extends Activity {
  const factory _Activity(
      {required String id,
      required DateTime createdAt,
      required DateTime updatedAt,
      required int bidCount,
      required List<String> services,
      required ActivityStatus status,
      required ActivityProvider? provider}) = _$_Activity;
  const _Activity._() : super._();

  factory _Activity.fromJson(Map<String, dynamic> json) = _$_Activity.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  int get bidCount => throw _privateConstructorUsedError;
  @override
  List<String> get services => throw _privateConstructorUsedError;
  @override
  ActivityStatus get status => throw _privateConstructorUsedError;
  @override
  ActivityProvider? get provider => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActivityCopyWith<_Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivityProvider _$ActivityProviderFromJson(Map<String, dynamic> json) {
  return _ActivityProvider.fromJson(json);
}

/// @nodoc
class _$ActivityProviderTearOff {
  const _$ActivityProviderTearOff();

  _ActivityProvider call(
      {required String photoUrl, required String displayName}) {
    return _ActivityProvider(
      photoUrl: photoUrl,
      displayName: displayName,
    );
  }

  ActivityProvider fromJson(Map<String, Object> json) {
    return ActivityProvider.fromJson(json);
  }
}

/// @nodoc
const $ActivityProvider = _$ActivityProviderTearOff();

/// @nodoc
mixin _$ActivityProvider {
  String get photoUrl => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityProviderCopyWith<ActivityProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityProviderCopyWith<$Res> {
  factory $ActivityProviderCopyWith(
          ActivityProvider value, $Res Function(ActivityProvider) then) =
      _$ActivityProviderCopyWithImpl<$Res>;
  $Res call({String photoUrl, String displayName});
}

/// @nodoc
class _$ActivityProviderCopyWithImpl<$Res>
    implements $ActivityProviderCopyWith<$Res> {
  _$ActivityProviderCopyWithImpl(this._value, this._then);

  final ActivityProvider _value;
  // ignore: unused_field
  final $Res Function(ActivityProvider) _then;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ActivityProviderCopyWith<$Res>
    implements $ActivityProviderCopyWith<$Res> {
  factory _$ActivityProviderCopyWith(
          _ActivityProvider value, $Res Function(_ActivityProvider) then) =
      __$ActivityProviderCopyWithImpl<$Res>;
  @override
  $Res call({String photoUrl, String displayName});
}

/// @nodoc
class __$ActivityProviderCopyWithImpl<$Res>
    extends _$ActivityProviderCopyWithImpl<$Res>
    implements _$ActivityProviderCopyWith<$Res> {
  __$ActivityProviderCopyWithImpl(
      _ActivityProvider _value, $Res Function(_ActivityProvider) _then)
      : super(_value, (v) => _then(v as _ActivityProvider));

  @override
  _ActivityProvider get _value => super._value as _ActivityProvider;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_ActivityProvider(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ActivityProvider extends _ActivityProvider {
  const _$_ActivityProvider({required this.photoUrl, required this.displayName})
      : super._();

  factory _$_ActivityProvider.fromJson(Map<String, dynamic> json) =>
      _$_$_ActivityProviderFromJson(json);

  @override
  final String photoUrl;
  @override
  final String displayName;

  @override
  String toString() {
    return 'ActivityProvider(photoUrl: $photoUrl, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivityProvider &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(displayName);

  @JsonKey(ignore: true)
  @override
  _$ActivityProviderCopyWith<_ActivityProvider> get copyWith =>
      __$ActivityProviderCopyWithImpl<_ActivityProvider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActivityProviderToJson(this);
  }
}

abstract class _ActivityProvider extends ActivityProvider {
  const factory _ActivityProvider(
      {required String photoUrl,
      required String displayName}) = _$_ActivityProvider;
  const _ActivityProvider._() : super._();

  factory _ActivityProvider.fromJson(Map<String, dynamic> json) =
      _$_ActivityProvider.fromJson;

  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActivityProviderCopyWith<_ActivityProvider> get copyWith =>
      throw _privateConstructorUsedError;
}
