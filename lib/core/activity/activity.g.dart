// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Activity _$_$_ActivityFromJson(Map<String, dynamic> json) {
  return _$_Activity(
    id: json['id'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    bidCount: json['bidCount'] as int,
    services:
        (json['services'] as List<dynamic>).map((e) => e as String).toList(),
    status: _$enumDecode(_$ActivityStatusEnumMap, json['status']),
    provider: json['provider'] == null
        ? null
        : ActivityProvider.fromJson(json['provider'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ActivityToJson(_$_Activity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'bidCount': instance.bidCount,
      'services': instance.services,
      'status': _$ActivityStatusEnumMap[instance.status],
      'provider': instance.provider?.toJson(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ActivityStatusEnumMap = {
  ActivityStatus.pending: 'pending',
  ActivityStatus.scheduled: 'scheduled',
  ActivityStatus.processing: 'processing',
  ActivityStatus.completed: 'completed',
  ActivityStatus.cancelled: 'cancelled',
  ActivityStatus.expired: 'expired',
};

_$_ActivityProvider _$_$_ActivityProviderFromJson(Map<String, dynamic> json) {
  return _$_ActivityProvider(
    photoUrl: json['photoUrl'] as String,
    displayName: json['displayName'] as String,
  );
}

Map<String, dynamic> _$_$_ActivityProviderToJson(
        _$_ActivityProvider instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'displayName': instance.displayName,
    };
