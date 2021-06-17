import 'package:flutter/material.dart';

import '../widget/faq_list_tile.dart';

class FaqPage {
  static const String routeName = '/faq';
  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      settings: RouteSettings(name: routeName),
      builder: (context) => const FaqScreen(),
    );
  }
}

class FaqScreen extends StatelessWidget {
  const FaqScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(),
      body: ListView(
        children: [
          Material(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(
                    'https://cdn.iconscout.com/icon/free/png-512/faq-2039730-1721150.png',
                    height: 128.0,
                  ),
                  Text(
                    'How can we help you?',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
          ),
          FaqListTile(),
          const Divider(),
          FaqListTile(),
          const Divider(),
          FaqListTile(),
          const Divider(),
          FaqListTile(),
        ],
      ),
    );
  }
}
