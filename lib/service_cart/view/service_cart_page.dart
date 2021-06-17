import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../widgets/group_service_list_tile.dart';
import 'schedule_page.dart';

class ServiceCartPage {
  static const String routeName = '/service-cart';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ServiceCartScreen(),
    );
  }
}

class ServiceCartScreen extends StatelessWidget {
  ServiceCartScreen();

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    itemPositionsListener.itemPositions.addListener(() {
      itemPositionsListener.itemPositions.value.forEach((element) {
        debugPrint(element.toString());
      });
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('General Cleaning'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: SizedBox(
            height: kToolbarHeight,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ServiceTab(
                  text: 'Living Room',
                  selected: false,
                  onTap: () {
                    itemScrollController.scrollTo(
                      index: 0,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOutCubic,
                    );
                  },
                ),
                ServiceTab(
                  text: 'Bathroom',
                  selected: true,
                  onTap: () {
                    itemScrollController.scrollTo(
                      index: 1,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOutCubic,
                    );
                  },
                ),
                ServiceTab(
                  text: 'Kitchen and Dining',
                  selected: false,
                  onTap: () {
                    itemScrollController.scrollTo(
                      index: 2,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOutCubic,
                    );
                  },
                ),
                ServiceTab(
                  text: 'Bedroom',
                  selected: false,
                  onTap: () {
                    itemScrollController.scrollTo(
                      index: 3,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOutCubic,
                    );
                  },
                ),
                ServiceTab(
                  text: 'Balcony',
                  selected: false,
                  onTap: () {
                    itemScrollController.scrollTo(
                      index: 4,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOutCubic,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ScrollablePositionedList.builder(
                itemCount: 5,
                itemBuilder: (context, index) => const GroupServiceListTile(),
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 21.0,
                vertical: 12.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.of(context).push(SchedulePage.route()),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
                child: Text('Pick Schedule'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
