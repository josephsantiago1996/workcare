import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/left_chat_list_tile.dart';
import '../widget/right_chat_list_tile.dart';

class ChatSupportPage {
  static const String routeName = 'chat-support';
  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      settings: RouteSettings(name: routeName),
      builder: (context) => const ChatSupportScreen(),
    );
  }
}

class ChatSupportScreen extends StatelessWidget {
  const ChatSupportScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Support'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                LeftChatListTile(),
                const Gap(12.0),
                LeftChatListTile(),
                const Gap(12.0),
                RightChatListTile(),
              ],
            ),
          ),
          const Divider(),
          Material(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Say something...',
                      ),
                    ),
                  ),
                  const Gap(12.0),
                  IconButton(
                    icon: Icon(Icons.send),
                    constraints: BoxConstraints(),
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
