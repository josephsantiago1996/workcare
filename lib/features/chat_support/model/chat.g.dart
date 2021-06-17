// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$_$_ChatFromJson(Map<String, dynamic> json) {
  return _$_Chat(
    id: json['id'] as String,
    data: json['data'] as String,
    user: ChatUser.fromJson(json['user'] as Map<String, dynamic>),
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$_$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'user': instance.user.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$_ChatUser _$_$_ChatUserFromJson(Map<String, dynamic> json) {
  return _$_ChatUser(
    id: json['id'] as String,
    photoUrl: json['photoUrl'] as String,
    displayName: json['displayName'] as String,
  );
}

Map<String, dynamic> _$_$_ChatUserToJson(_$_ChatUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photoUrl': instance.photoUrl,
      'displayName': instance.displayName,
    };
