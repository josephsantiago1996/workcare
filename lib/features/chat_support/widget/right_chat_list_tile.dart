import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RightChatListTile extends StatelessWidget {
  const RightChatListTile();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Gusto ko lang ireklamo yung provider na hindi pumunta. Thanks',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            Gap(constraints.maxWidth * 0.24),
          ],
        );
      },
    );
  }
}
