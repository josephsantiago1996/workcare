// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bid _$_$_BidFromJson(Map<String, dynamic> json) {
  return _$_Bid(
    imageUrl: json['imageUrl'] as String,
    displayName: json['displayName'] as String,
    price: json['price'] as int,
    rating: json['rating'] as int,
  );
}

Map<String, dynamic> _$_$_BidToJson(_$_Bid instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'displayName': instance.displayName,
      'price': instance.price,
      'rating': instance.rating,
    };
