import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.g.dart';
part 'notification.freezed.dart';

@freezed
@immutable
class Notification with _$Notification {
  @JsonSerializable(explicitToJson: true)
  const Notification._();

  @JsonSerializable(explicitToJson: true)
  const factory Notification({
    required String id,
    required String title,
    required String description,
    required bool seen,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}
