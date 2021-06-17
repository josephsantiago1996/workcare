// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'voucher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Voucher _$VoucherFromJson(Map<String, dynamic> json) {
  return _Voucher.fromJson(json);
}

/// @nodoc
class _$VoucherTearOff {
  const _$VoucherTearOff();

  _Voucher call() {
    return const _Voucher();
  }

  Voucher fromJson(Map<String, Object> json) {
    return Voucher.fromJson(json);
  }
}

/// @nodoc
const $Voucher = _$VoucherTearOff();

/// @nodoc
mixin _$Voucher {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherCopyWith<$Res> {
  factory $VoucherCopyWith(Voucher value, $Res Function(Voucher) then) =
      _$VoucherCopyWithImpl<$Res>;
}

/// @nodoc
class _$VoucherCopyWithImpl<$Res> implements $VoucherCopyWith<$Res> {
  _$VoucherCopyWithImpl(this._value, this._then);

  final Voucher _value;
  // ignore: unused_field
  final $Res Function(Voucher) _then;
}

/// @nodoc
abstract class _$VoucherCopyWith<$Res> {
  factory _$VoucherCopyWith(_Voucher value, $Res Function(_Voucher) then) =
      __$VoucherCopyWithImpl<$Res>;
}

/// @nodoc
class __$VoucherCopyWithImpl<$Res> extends _$VoucherCopyWithImpl<$Res>
    implements _$VoucherCopyWith<$Res> {
  __$VoucherCopyWithImpl(_Voucher _value, $Res Function(_Voucher) _then)
      : super(_value, (v) => _then(v as _Voucher));

  @override
  _Voucher get _value => super._value as _Voucher;
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Voucher extends _Voucher {
  const _$_Voucher() : super._();

  factory _$_Voucher.fromJson(Map<String, dynamic> json) =>
      _$_$_VoucherFromJson(json);

  @override
  String toString() {
    return 'Voucher()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Voucher);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VoucherToJson(this);
  }
}

abstract class _Voucher extends Voucher {
  const factory _Voucher() = _$_Voucher;
  const _Voucher._() : super._();

  factory _Voucher.fromJson(Map<String, dynamic> json) = _$_Voucher.fromJson;
}
