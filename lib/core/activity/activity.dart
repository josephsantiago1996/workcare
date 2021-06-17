import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timeago/timeago.dart';

part 'activity.g.dart';
part 'activity.freezed.dart';

@freezed
@immutable
class Activity with _$Activity {
  @JsonSerializable(explicitToJson: true)
  const Activity._();

  @JsonSerializable(explicitToJson: true)
  const factory Activity({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int bidCount,
    required List<String> services,
    required ActivityStatus status,
    required ActivityProvider? provider,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

  String get formattedCreatedAt => format(createdAt);
  String get formattedUpdatedAt => format(updatedAt);
  String get formattedStatus {
    switch (status) {
      case ActivityStatus.pending:
        return 'Pending';
      case ActivityStatus.scheduled:
        return 'Scheduled';
      case ActivityStatus.processing:
        return 'Processing';
      case ActivityStatus.completed:
        return 'Completed';
      case ActivityStatus.cancelled:
        return 'Cancelled';
      case ActivityStatus.expired:
        return 'Expired';
      default:
        throw FallThroughError();
    }
  }

  int get formattedStatusColor {
    switch (status) {
      case ActivityStatus.pending:
        return 0xFFFF9800;
      case ActivityStatus.scheduled:
        return 0xFFFFC107;
      case ActivityStatus.processing:
        return 0xFF2196F3;
      case ActivityStatus.completed:
        return 0xFF4CAF50;
      case ActivityStatus.cancelled:
        return 0xFFF44336;
      case ActivityStatus.expired:
        return 0xFF9E9E9E;
      default:
        throw FallThroughError();
    }
  }

  int get formattedStatusBackgroundColor {
    switch (status) {
      case ActivityStatus.pending:
        return 0xFFFFF3E0;
      case ActivityStatus.scheduled:
        return 0xFFFFF8E1;
      case ActivityStatus.processing:
        return 0xFFE3F2FD;
      case ActivityStatus.completed:
        return 0xFFE8F5E9;
      case ActivityStatus.cancelled:
        return 0xFFFFEBEE;
      case ActivityStatus.expired:
        return 0xFFFAFAFA;
      default:
        throw FallThroughError();
    }
  }
}

@freezed
@immutable
class ActivityProvider with _$ActivityProvider {
  @JsonSerializable(explicitToJson: true)
  const ActivityProvider._();

  @JsonSerializable(explicitToJson: true)
  const factory ActivityProvider({
    required String photoUrl,
    required String displayName,
  }) = _ActivityProvider;

  factory ActivityProvider.fromJson(Map<String, dynamic> json) => _$ActivityProviderFromJson(json);
}

enum ActivityStatus {
  pending,
  scheduled,
  processing,
  completed,
  cancelled,
  expired,
}
