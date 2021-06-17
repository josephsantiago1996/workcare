import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher.g.dart';
part 'voucher.freezed.dart';

@freezed
@immutable
abstract class Voucher implements _$Voucher {
  @JsonSerializable(explicitToJson: true)
  const Voucher._();

  @JsonSerializable(explicitToJson: true)
  const factory Voucher() = _Voucher;

  factory Voucher.fromJson(Map<String, dynamic> json) => _$VoucherFromJson(json);
}
