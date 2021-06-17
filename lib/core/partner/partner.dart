import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner.g.dart';
part 'partner.freezed.dart';

@freezed
@immutable
abstract class Partner implements _$Partner {
  @JsonSerializable(explicitToJson: true)
  const Partner._();

  @JsonSerializable(explicitToJson: true)
  const factory Partner() = _Partner;

  factory Partner.fromJson(Map<String, dynamic> json) => _$PartnerFromJson(json);
}
