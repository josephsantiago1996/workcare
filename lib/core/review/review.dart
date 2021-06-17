import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.g.dart';
part 'review.freezed.dart';

@freezed
@immutable
abstract class Review implements _$Review {
  @JsonSerializable(explicitToJson: true)
  const Review._();

  @JsonSerializable(explicitToJson: true)
  const factory Review() = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
