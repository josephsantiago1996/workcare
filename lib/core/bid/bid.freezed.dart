// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bid _$BidFromJson(Map<String, dynamic> json) {
  return _Bid.fromJson(json);
}

/// @nodoc
class _$BidTearOff {
  const _$BidTearOff();

  _Bid call(
      {required String imageUrl,
      required String displayName,
      required int price,
      required int rating}) {
    return _Bid(
      imageUrl: imageUrl,
      displayName: displayName,
      price: price,
      rating: rating,
    );
  }

  Bid fromJson(Map<String, Object> json) {
    return Bid.fromJson(json);
  }
}

/// @nodoc
const $Bid = _$BidTearOff();

/// @nodoc
mixin _$Bid {
  String get imageUrl => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BidCopyWith<Bid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidCopyWith<$Res> {
  factory $BidCopyWith(Bid value, $Res Function(Bid) then) =
      _$BidCopyWithImpl<$Res>;
  $Res call({String imageUrl, String displayName, int price, int rating});
}

/// @nodoc
class _$BidCopyWithImpl<$Res> implements $BidCopyWith<$Res> {
  _$BidCopyWithImpl(this._value, this._then);

  final Bid _value;
  // ignore: unused_field
  final $Res Function(Bid) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? displayName = freezed,
    Object? price = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BidCopyWith<$Res> implements $BidCopyWith<$Res> {
  factory _$BidCopyWith(_Bid value, $Res Function(_Bid) then) =
      __$BidCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String displayName, int price, int rating});
}

/// @nodoc
class __$BidCopyWithImpl<$Res> extends _$BidCopyWithImpl<$Res>
    implements _$BidCopyWith<$Res> {
  __$BidCopyWithImpl(_Bid _value, $Res Function(_Bid) _then)
      : super(_value, (v) => _then(v as _Bid));

  @override
  _Bid get _value => super._value as _Bid;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? displayName = freezed,
    Object? price = freezed,
    Object? rating = freezed,
  }) {
    return _then(_Bid(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Bid extends _Bid {
  const _$_Bid(
      {required this.imageUrl,
      required this.displayName,
      required this.price,
      required this.rating})
      : super._();

  factory _$_Bid.fromJson(Map<String, dynamic> json) => _$_$_BidFromJson(json);

  @override
  final String imageUrl;
  @override
  final String displayName;
  @override
  final int price;
  @override
  final int rating;

  @override
  String toString() {
    return 'Bid(imageUrl: $imageUrl, displayName: $displayName, price: $price, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Bid &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$BidCopyWith<_Bid> get copyWith =>
      __$BidCopyWithImpl<_Bid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BidToJson(this);
  }
}

abstract class _Bid extends Bid {
  const factory _Bid(
      {required String imageUrl,
      required String displayName,
      required int price,
      required int rating}) = _$_Bid;
  const _Bid._() : super._();

  factory _Bid.fromJson(Map<String, dynamic> json) = _$_Bid.fromJson;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BidCopyWith<_Bid> get copyWith => throw _privateConstructorUsedError;
}
