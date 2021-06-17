import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.g.dart';
part 'chat.freezed.dart';

@freezed
@immutable
class Chat with _$Chat {
  @JsonSerializable(explicitToJson: true)
  const Chat._();

  @JsonSerializable(explicitToJson: true)
  const factory Chat({
    required String id,
    required String data,
    required ChatUser user,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}

@freezed
@immutable
class ChatUser with _$ChatUser {
  @JsonSerializable(explicitToJson: true)
  const ChatUser._();

  const factory ChatUser({
    required String id,
    required String photoUrl,
    required String displayName,
  }) = _ChatUser;

  factory ChatUser.fromJson(Map<String, dynamic> json) => _$ChatUserFromJson(json);
}

final chats = [
  Chat(
    id: '1',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    data: 'Hi, thanks for contacting work care. Our customer service representative will assist you shortly.',
    user: ChatUser(
      id: '1',
      photoUrl: 'https://www.google.com',
      displayName: 'Ian Jasper Santos',
    ),
  ),
];
