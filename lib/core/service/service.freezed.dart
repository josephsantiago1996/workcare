// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
class _$ServiceTearOff {
  const _$ServiceTearOff();

  _Service call() {
    return const _Service();
  }

  Service fromJson(Map<String, Object> json) {
    return Service.fromJson(json);
  }
}

/// @nodoc
const $Service = _$ServiceTearOff();

/// @nodoc
mixin _$Service {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res> implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  final Service _value;
  // ignore: unused_field
  final $Res Function(Service) _then;
}

/// @nodoc
abstract class _$ServiceCopyWith<$Res> {
  factory _$ServiceCopyWith(_Service value, $Res Function(_Service) then) =
      __$ServiceCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServiceCopyWithImpl<$Res> extends _$ServiceCopyWithImpl<$Res>
    implements _$ServiceCopyWith<$Res> {
  __$ServiceCopyWithImpl(_Service _value, $Res Function(_Service) _then)
      : super(_value, (v) => _then(v as _Service));

  @override
  _Service get _value => super._value as _Service;
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Service extends _Service {
  const _$_Service() : super._();

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceFromJson(json);

  @override
  String toString() {
    return 'Service()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Service);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceToJson(this);
  }
}

abstract class _Service extends Service {
  const factory _Service() = _$_Service;
  const _Service._() : super._();

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;
}
