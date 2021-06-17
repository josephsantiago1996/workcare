// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Faq _$_$_FaqFromJson(Map<String, dynamic> json) {
  return _$_Faq(
    id: json['id'] as String,
    service: json['service'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$_$_FaqToJson(_$_Faq instance) => <String, dynamic>{
      'id': instance.id,
      'service': instance.service,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
