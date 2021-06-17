import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'summary_page.dart';

class SchedulePage {
  static const String routeName = '/schedule';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => const ScheduleScreen(),
    );
  }
}

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Schedule'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 21.0 / 9.0,
                      child: TimeGridTile(
                        label: 'Today',
                        selected: true,
                        isTime: false,
                        onTap: () {},
                      ),
                    ),
                  ),
                  const Gap(12.0),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 21.0 / 9.0,
                      child: TimeGridTile(
                        label: 'Tomorrow',
                        selected: false,
                        isTime: false,
                        onTap: () {},
                      ),
                    ),
                  ),
                  const Gap(12.0),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 21.0 / 9.0,
                      child: TimeGridTile(
                        label: 'Custom',
                        selected: false,
                        isTime: false,
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(21.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 21.0 / 9.0,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                ),
                children: [
                  TimeGridTile(
                    label: '07:00 AM',
                    selected: true,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '07:30 AM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '08:00 AM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '08:30 AM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '09:00 AM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '09:30 AM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '10:00 AM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '10:30 AM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '11:00 AM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '11:30 AM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '12:00 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '12:30 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '01:00 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '01:30 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '02:00 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '02:30 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '03:00 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '03:30 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '04:00 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '04:30 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '05:00 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                  TimeGridTile(
                    label: '05:30 PM',
                    selected: false,
                    isTime: true,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 21.0,
                vertical: 12.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.of(context).push(SummaryPage.route()),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
                child: Text('View Summary'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeGridTile extends StatelessWidget {
  final String label;
  final bool selected;
  final bool isTime;
  final GestureTapCallback onTap;

  const TimeGridTile({
    Key? key,
    required this.label,
    required this.selected,
    required this.isTime,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(4.0),
      color: selected ? Color(0xFF364b68) : Colors.white,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: Colors.grey,
            width: selected ? 2.0 : 0.2,
          ),
        ),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              '$label',
              textAlign: TextAlign.center,
              style: isTime ? Theme.of(context).textTheme.caption!.copyWith(color: selected ? Colors.white : Colors.black87) : Theme.of(context).textTheme.bodyText2!.copyWith(color: selected ? Colors.white : Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
