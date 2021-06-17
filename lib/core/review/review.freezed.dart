// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review call() {
    return const _Review();
  }

  Review fromJson(Map<String, Object> json) {
    return Review.fromJson(json);
  }
}

/// @nodoc
const $Review = _$ReviewTearOff();

/// @nodoc
mixin _$Review {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;
}

/// @nodoc
abstract class _$ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Review extends _Review {
  const _$_Review() : super._();

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewFromJson(json);

  @override
  String toString() {
    return 'Review()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Review);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewToJson(this);
  }
}

abstract class _Review extends Review {
  const factory _Review() = _$_Review;
  const _Review._() : super._();

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;
}
