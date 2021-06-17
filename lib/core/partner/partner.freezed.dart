// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Partner _$PartnerFromJson(Map<String, dynamic> json) {
  return _Partner.fromJson(json);
}

/// @nodoc
class _$PartnerTearOff {
  const _$PartnerTearOff();

  _Partner call() {
    return const _Partner();
  }

  Partner fromJson(Map<String, Object> json) {
    return Partner.fromJson(json);
  }
}

/// @nodoc
const $Partner = _$PartnerTearOff();

/// @nodoc
mixin _$Partner {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerCopyWith<$Res> {
  factory $PartnerCopyWith(Partner value, $Res Function(Partner) then) =
      _$PartnerCopyWithImpl<$Res>;
}

/// @nodoc
class _$PartnerCopyWithImpl<$Res> implements $PartnerCopyWith<$Res> {
  _$PartnerCopyWithImpl(this._value, this._then);

  final Partner _value;
  // ignore: unused_field
  final $Res Function(Partner) _then;
}

/// @nodoc
abstract class _$PartnerCopyWith<$Res> {
  factory _$PartnerCopyWith(_Partner value, $Res Function(_Partner) then) =
      __$PartnerCopyWithImpl<$Res>;
}

/// @nodoc
class __$PartnerCopyWithImpl<$Res> extends _$PartnerCopyWithImpl<$Res>
    implements _$PartnerCopyWith<$Res> {
  __$PartnerCopyWithImpl(_Partner _value, $Res Function(_Partner) _then)
      : super(_value, (v) => _then(v as _Partner));

  @override
  _Partner get _value => super._value as _Partner;
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Partner extends _Partner {
  const _$_Partner() : super._();

  factory _$_Partner.fromJson(Map<String, dynamic> json) =>
      _$_$_PartnerFromJson(json);

  @override
  String toString() {
    return 'Partner()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Partner);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PartnerToJson(this);
  }
}

abstract class _Partner extends Partner {
  const factory _Partner() = _$_Partner;
  const _Partner._() : super._();

  factory _Partner.fromJson(Map<String, dynamic> json) = _$_Partner.fromJson;
}
