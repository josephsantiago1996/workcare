import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.g.dart';
part 'service.freezed.dart';

@freezed
@immutable
abstract class Service implements _$Service {
  @JsonSerializable(explicitToJson: true)
  const Service._();

  @JsonSerializable(explicitToJson: true)
  const factory Service() = _Service;

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}
