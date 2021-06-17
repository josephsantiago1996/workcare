import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:workcare/features/profile/view/profile_page.dart';

import 'view/activity_order_page.dart';

class ActivityDetailPage {
  static const String routeName = '';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => const ActivityDetailScreen(),
    );
  }
}

class ActivityDetailScreen extends StatelessWidget {
  const ActivityDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: Text('Select Provider'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 4,
                itemBuilder: (context, index) => const ProviderListTile(),
                separatorBuilder: (context, index) => const Gap(12.0),
              ),
            ),
            const Divider(),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 21.0,
                vertical: 12.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.of(context).pushReplacement(ActivityOrderPage.route()),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
                child: Text('Cancel Services'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProviderListTile extends StatelessWidget {
  const ProviderListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.of(context).push(ProfilePage.route()),
              child: Row(
                children: [
                  Ink(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTc0NDg3NjA2MDQ0NjY1MTky/top-10-most-successful-beautiful-korean-drama-actresses.jpg',
                      ),
                    ),
                  ),
                  const Gap(16.0),
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
                            Icon(
                              Icons.star_rate,
                              color: Colors.amber,
                              size: 18.0,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: Colors.amber,
                              size: 18.0,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: Colors.amber,
                              size: 18.0,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: Colors.amber,
                              size: 18.0,
                            ),
                            Icon(
                              Icons.star_rate_outlined,
                              color: Colors.amber,
                              size: 18.0,
                            ),
                            const Gap(8.0),
                            Text('365 reviews'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(16.0),
                  OutlinedButton(
                    onPressed: () {
                      showDialog<void>(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Accept Provider'),
                            content: Text('Accept Suzy Bae as your service provider?'),
                            actions: [
                              OutlinedButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('Accept'),
                              ),
                              OutlinedButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('Cancel'),
                              ),
                            ],
                          );
                        },
                      ).then((value) => Navigator.of(context).pushReplacement(ActivityOrderPage.route()));
                    },
                    style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Icon(Icons.check),
                  ),
                ],
              ),
            ),
            const Gap(12.0),
            const Divider(),
            const Gap(12.0),
            Text(
              'Service Rate',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.monetization_on,
                    color: Colors.orange,
                    size: 21.0,
                  ),
                  const Gap(16.0),
                  Text('Offered for PHP 500.00'),
                ],
              ),
            ),
            const Gap(12.0),
            Text(
              'Service Match',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: Colors.green,
                    size: 21.0,
                  ),
                  const Gap(16.0),
                  Text('Cleaning'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: Colors.green,
                    size: 21.0,
                  ),
                  const Gap(16.0),
                  Text('Carpentry'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: Colors.green,
                    size: 21.0,
                  ),
                  const Gap(16.0),
                  Text('Carwash'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.not_interested,
                    color: Colors.transparent,
                    size: 21.0,
                  ),
                  const Gap(16.0),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Gardening',
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey, decoration: TextDecoration.lineThrough),
                        ),
                        TextSpan(
                          text: ' (Not Included)',
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
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
