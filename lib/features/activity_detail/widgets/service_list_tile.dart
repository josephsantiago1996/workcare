import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:separated_column/separated_column.dart';

class AddedServiceListTile extends StatelessWidget {
  const AddedServiceListTile();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                  size: 21.0,
                ),
                const Gap(16.0),
                Expanded(
                  child: Text(
                    'Water Proofing Consultation',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ],
            ),
            const Gap(4.0),
            DefaultTextStyle(
              style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.black54),
              child: SeparatedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                separatorBuilder: (context, index) => const Gap(2.0),
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(8.0),
                      Text(
                        '•',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                      ),
                      const Gap(22.0),
                      Expanded(
                        child: Text('Protection against seepage that results into fungus, mould, and peeling point'),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(8.0),
                      Text(
                        '•',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                      ),
                      const Gap(22.0),
                      Expanded(
                        child: Text('Improves the life of the wall, and theh paint'),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(8.0),
                      Text(
                        '•',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                      ),
                      const Gap(22.0),
                      Expanded(
                        child: Text('Basis your inputs, the consultant will share customized quotation(s)'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
