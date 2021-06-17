import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid.g.dart';
part 'bid.freezed.dart';

@freezed
@immutable
class Bid with _$Bid {
  @JsonSerializable(explicitToJson: true)
  const Bid._();

  @JsonSerializable(explicitToJson: true)
  const factory Bid({
    required String imageUrl,
    required String displayName,
    required int price,
    required int rating,
  }) = _Bid;

  factory Bid.fromJson(Map<String, dynamic> json) => _$BidFromJson(json);
}
