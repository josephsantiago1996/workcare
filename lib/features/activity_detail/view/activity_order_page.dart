import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/service_list_tile.dart';
import 'rating_page.dart';

class ActivityOrderPage {
  static const String routeName = '/activity-order';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => const ActivityOrderScreen(),
    );
  }
}

class ActivityOrderScreen extends StatelessWidget {
  const ActivityOrderScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Order'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Material(
                color: Colors.grey.shade200,
                child: ListView(
                  children: [
                    Material(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Suzy Bae',
                                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star_rate_rounded,
                                                color: Colors.amber,
                                              ),
                                              Icon(
                                                Icons.star_rate_rounded,
                                                color: Colors.amber,
                                              ),
                                              Icon(
                                                Icons.star_rate_rounded,
                                                color: Colors.amber,
                                              ),
                                              Icon(
                                                Icons.star_rate_rounded,
                                                color: Colors.amber,
                                              ),
                                              Icon(
                                                Icons.star_rate_rounded,
                                                color: Colors.amber,
                                              ),
                                            ],
                                          ),
                                          const Gap(8.0),
                                          Text('365 reviews'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Gap(16.0),
                                Ink(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      'https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTc0NDg3NjA2MDQ0NjY1MTky/top-10-most-successful-beautiful-korean-drama-actresses.jpg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Date',
                                    style: Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                                Text(
                                  'Today, April 22, 2021',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Time',
                                    style: Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                                Text(
                                  '03:30 PM',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Status',
                                    style: Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                                Text(
                                  'Scheduled',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54, backgroundColor: Colors.yellow),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Amount',
                                    style: Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                                Text(
                                  'PHP 500.00',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(16.0),
                    AddedServiceListTile(),
                    const Divider(),
                    AddedServiceListTile(),
                    const Divider(),
                    AddedServiceListTile(),
                    const Divider(),
                    AddedServiceListTile(),
                    const Gap(16.0),
                  ],
                ),
              ),
            ),
            const Divider(),
            Material(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.of(context).pushReplacement(RatingPage.route()),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  child: Text('Leave Feedback'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
