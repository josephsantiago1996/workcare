import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq.g.dart';
part 'faq.freezed.dart';

@freezed
@immutable
class Faq with _$Faq {
  @JsonSerializable(explicitToJson: true)
  const Faq._();

  @JsonSerializable(explicitToJson: true)
  const factory Faq({
    required String id,
    required String service,
    required String title,
    required String description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Faq;

  factory Faq.fromJson(Map<String, dynamic> json) => _$FaqFromJson(json);
}

final faqs = [
  Faq(
    id: '1',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    service: 'Warranty and Repair Service',
    title: 'How do I service or repair my watch?',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
];
