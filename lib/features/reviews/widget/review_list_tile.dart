import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ReviewListTile extends StatelessWidget {
  const ReviewListTile();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 24.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Ink(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.indigo,
                      width: 2.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.indigo.shade100,
                  ),
                ),
                const Gap(16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Joseph Santiago',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Color(0xFF364b68)),
                      ),
                    ],
                  ),
                ),
                const Gap(16.0),
                Text(
                  '5.0',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Color(0xFF364b68)),
                ),
                const Gap(4.0),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 16.0,
                ),
              ],
            ),
            const Gap(12.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Maganda ang serbisyo na ginawa ni Joseph. Mabilis nya nailinis ang aking kotse kaya ako ay hindi nalate sa aking meeting. Mabango att malinis ang kanyang ginawa sa aking kotse kaya sa susunud ay siya ulit ang aking kukunin para maglinis ng aking kotse.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
