// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'faq.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Faq _$FaqFromJson(Map<String, dynamic> json) {
  return _Faq.fromJson(json);
}

/// @nodoc
class _$FaqTearOff {
  const _$FaqTearOff();

  _Faq call(
      {required String id,
      required String service,
      required String title,
      required String description,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _Faq(
      id: id,
      service: service,
      title: title,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Faq fromJson(Map<String, Object> json) {
    return Faq.fromJson(json);
  }
}

/// @nodoc
const $Faq = _$FaqTearOff();

/// @nodoc
mixin _$Faq {
  String get id => throw _privateConstructorUsedError;
  String get service => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqCopyWith<Faq> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqCopyWith<$Res> {
  factory $FaqCopyWith(Faq value, $Res Function(Faq) then) =
      _$FaqCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String service,
      String title,
      String description,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$FaqCopyWithImpl<$Res> implements $FaqCopyWith<$Res> {
  _$FaqCopyWithImpl(this._value, this._then);

  final Faq _value;
  // ignore: unused_field
  final $Res Function(Faq) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? service = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$FaqCopyWith<$Res> implements $FaqCopyWith<$Res> {
  factory _$FaqCopyWith(_Faq value, $Res Function(_Faq) then) =
      __$FaqCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String service,
      String title,
      String description,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$FaqCopyWithImpl<$Res> extends _$FaqCopyWithImpl<$Res>
    implements _$FaqCopyWith<$Res> {
  __$FaqCopyWithImpl(_Faq _value, $Res Function(_Faq) _then)
      : super(_value, (v) => _then(v as _Faq));

  @override
  _Faq get _value => super._value as _Faq;

  @override
  $Res call({
    Object? id = freezed,
    Object? service = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Faq(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Faq extends _Faq {
  const _$_Faq(
      {required this.id,
      required this.service,
      required this.title,
      required this.description,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$_Faq.fromJson(Map<String, dynamic> json) => _$_$_FaqFromJson(json);

  @override
  final String id;
  @override
  final String service;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Faq(id: $id, service: $service, title: $title, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Faq &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$FaqCopyWith<_Faq> get copyWith =>
      __$FaqCopyWithImpl<_Faq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FaqToJson(this);
  }
}

abstract class _Faq extends Faq {
  const factory _Faq(
      {required String id,
      required String service,
      required String title,
      required String description,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_Faq;
  const _Faq._() : super._();

  factory _Faq.fromJson(Map<String, dynamic> json) = _$_Faq.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get service => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FaqCopyWith<_Faq> get copyWith => throw _privateConstructorUsedError;
}
