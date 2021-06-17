import 'package:flutter/material.dart';
import 'package:separated_column/separated_column.dart';

class FaqListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final description =
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Warranty and Repair Service',
            style: themeData.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Material(
          child: SeparatedColumn(
            separatorBuilder: (context, index) => const Divider(),
            children: [
              ExpansionTile(
                title: Text('How do I service or repair my watch?'),
                childrenPadding: const EdgeInsets.all(16.0),
                children: [
                  Text(description),
                ],
              ),
              ExpansionTile(
                title: Text('Do I need to register my watch?'),
                childrenPadding: const EdgeInsets.all(16.0),
                children: [
                  Text(description),
                ],
              ),
              ExpansionTile(
                title: Text('My watch is outside the warranty, can I still have it serviced?'),
                childrenPadding: const EdgeInsets.all(16.0),
                children: [
                  Text(description),
                ],
              ),
              ExpansionTile(
                title: Text('How do I get repair estimate and how does it work?'),
                childrenPadding: const EdgeInsets.all(16.0),
                children: [
                  Text(description),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
