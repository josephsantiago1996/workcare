import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../app_constants.dart';

class ProfilePage {
  static const String routeName = 'profile';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF33689C),
      ),
      body: ListView(
        children: [
          Container(
            color: Color(0xFF33689C),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          radius: 48.0,
                        ),
                      ),
                      const Gap(16.0),
                      Text(
                        'Paul',
                        style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                      ),
                      Text(
                        'Toyota Prius - 5FLXYZ',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '2,228',
                              style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                            ),
                            Text(
                              'Services',
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '4.9',
                              style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                            ),
                            Text(
                              'Rating',
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '2',
                              style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                            ),
                            Text(
                              'Years',
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Color(0xFF33689C),
                  child: Icon(Icons.language),
                ),
                const Gap(16.0),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Speaks ',
                      ),
                      TextSpan(
                        text: 'Filipino',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Color(0xFF33689C),
                  child: Icon(Icons.location_pin),
                ),
                const Gap(16.0),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'From ',
                      ),
                      TextSpan(
                        text: 'Quezon City',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Text(
                  'Recent Services',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('${Assets.cleaning}'),
                ),
                title: Text('General Cleaning'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('${Assets.laundry}'),
                ),
                title: Text('Laundry'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('${Assets.aircon}'),
                ),
                title: Text('Aircon Maintenance'),
              ),
              const Gap(12.0),
            ],
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Text(
                  'Reviews',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                        const Gap(16.0),
                        Expanded(
                          child: Text(
                            'Really nice provider with a lots of interesting stories. Thanks for the service.',
                            style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                        const Gap(16.0),
                        Expanded(
                          child: Text(
                            'Hillarious person with the coolest service I`ve ever seen',
                            style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                        const Gap(16.0),
                        Expanded(
                          child: Text(
                            'Thank you, very well organized',
                            style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(12.0),
            ],
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Text(
                  'Compliments',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              AspectRatio(
                aspectRatio: 21.0 / 9.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  itemCount: 10,
                  separatorBuilder: (context, index) => const Gap(12.0),
                  itemBuilder: (context, index) {
                    return AspectRatio(
                      aspectRatio: 3.0 / 4.0,
                      child: Column(
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1.0 / 1.0,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4P3BOHss-zi3OMiA6DtPCXTacjkbiWJ5TwX2gPiRpn4xIKW4mc0PtakxiMANa3B0Q7Xo&usqp=CAU'),
                              ),
                            ),
                          ),
                          const Gap(4.0),
                          Text(
                            'Excellent Service',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
