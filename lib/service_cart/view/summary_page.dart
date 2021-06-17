import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:separated_column/separated_column.dart';
import 'package:workcare/service_cart/view/saved_places_page.dart';

class SummaryPage {
  static const String routeName = '/summary';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => const SummaryScreen(),
    );
  }
}

class SummaryScreen extends StatelessWidget {
  const SummaryScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Summary'),
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
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Ink(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                  const Gap(16.0),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Panay Tinapay',
                                          style: Theme.of(context).textTheme.subtitle2,
                                        ),
                                        Text(
                                          '26 Panay Ave, Diliman, Quezon City, 1103 Metro Manila',
                                          style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(12.0),
                              Row(
                                children: [
                                  Icon(null),
                                  const Gap(16.0),
                                  InkWell(
                                    onTap: () => Navigator.of(context).push(SavedPlacesPage.route()),
                                    child: Text(
                                      'Change location',
                                      style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(),
                    AddedServiceListTile(),
                    const Divider(),
                    AddedServiceListTile(),
                    const Divider(),
                    AddedServiceListTile(),
                    const Divider(),
                    AddedServiceListTile(),
                    const Gap(16.0),
                    Material(
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(21.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Apply promo code',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: 21.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Gap(16.0),
                    Material(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 21.0,
                              vertical: 12.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Schedule Details',
                                    style: Theme.of(context).textTheme.bodyText2,
                                  ),
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
                              horizontal: 21.0,
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
                        ],
                      ),
                    ),
                    const Gap(16.0),
                  ],
                ),
              ),
            ),
            const Divider(),
            Material(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 21.0,
                  vertical: 12.0,
                ),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  child: Text('Request for Bidding'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddedServiceListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(4.0),
                  Text(
                    'Water Proofing Consultation',
                    style: Theme.of(context).textTheme.subtitle2,
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
                            Text(
                              '•',
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                            ),
                            const Gap(8.0),
                            Expanded(
                              child: Text('Protection against seepage that results into fungus, mould, and peeling point'),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '•',
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                            ),
                            const Gap(8.0),
                            Expanded(
                              child: Text('Improves the life of the wall, and theh paint'),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '•',
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                            ),
                            const Gap(8.0),
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
            const Gap(24.0),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(24.0),
              child: Icon(
                Icons.close,
                size: 21.0,
                color: Colors.black54,
              ),
            ),
            // const Gap(4.0),
            // InkWell(
            //   onTap: () {},
            //   borderRadius: BorderRadius.circular(4.0),
            //   child: Ink(
            //     padding: EdgeInsets.symmetric(
            //       horizontal: 8.0,
            //       vertical: 4.0,
            //     ),
            //     decoration: BoxDecoration(
            //       color: Colors.redAccent,
            //       borderRadius: BorderRadius.circular(4.0),
            //     ),
            //     child: Text(
            //       'Remove',
            //       style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
