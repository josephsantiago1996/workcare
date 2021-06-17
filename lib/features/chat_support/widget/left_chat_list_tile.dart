import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LeftChatListTile extends StatelessWidget {
  const LeftChatListTile();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue.shade50,
            ),
            const Gap(12.0),
            Expanded(
              child: Material(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Hi, thanks for contacting work care. Our customer service representative will assist you shortly.'),
                ),
              ),
            ),
            Gap(constraints.maxWidth * 0.12),
          ],
        );
      },
    );
  }
}
