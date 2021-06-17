import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../app_constants.dart';
import '../../features/reviews/view/reviews_page.dart';
import '../../home/home_page.dart';
import '../../service_cart/view/service_cart_page.dart';

class ServiceShowcasePage {
  static const String routeName = '/service-showcase';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => const ServiceShowcaseScreen(),
    );
  }
}

class ServiceShowcaseScreen extends StatelessWidget {
  const ServiceShowcaseScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1.0,
                  aspectRatio: 4.0 / 3.0,
                  autoPlayCurve: Curves.easeIn,
                ),
                itemCount: 2,
                itemBuilder: (context, index, realIndex) {
                  final image = [
                    'https://thehardcopy.co/wp-content/uploads/uc.jpg',
                    'https://miro.medium.com/max/2896/1*Wd4YC7lI-kdUouyYFdUcIQ.png',
                  ];

                  return Image.network(
                    '${image[index]}',
                    fit: BoxFit.cover,
                  );
                },
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: AlignmentDirectional.topCenter,
                      end: AlignmentDirectional.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black54,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 48.0,
                left: 4.0,
                child: Material(
                  type: MaterialType.transparency,
                  child: IconButton(
                    icon: Icon(
                      Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                    ),
                    color: Colors.white,
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ),
            ],
          ),
          const Gap(12.0),
          Material(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Text(
                        'General Cleaning',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text('Please select what service do you need'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(ServiceCartPage.route()),
                        child: AspectRatio(
                          aspectRatio: 1.0 / 1.0,
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.05,
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      '${Assets.aircon}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Gap(12.0),
                                  Text(
                                    'Basin & Sink',
                                    style: Theme.of(context).textTheme.subtitle2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: AspectRatio(
                          aspectRatio: 1.0 / 1.0,
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.05,
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      '${Assets.aircon}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Gap(12.0),
                                  Text(
                                    'Basin & Sink',
                                    style: Theme.of(context).textTheme.subtitle2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: AspectRatio(
                          aspectRatio: 1.0 / 1.0,
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.05,
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      '${Assets.aircon}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Gap(12.0),
                                  Text(
                                    'Basin & Sink',
                                    style: Theme.of(context).textTheme.subtitle2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: AspectRatio(
                          aspectRatio: 1.0 / 1.0,
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.05,
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      '${Assets.aircon}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Gap(12.0),
                                  Text(
                                    'Basin & Sink',
                                    style: Theme.of(context).textTheme.subtitle2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: AspectRatio(
                          aspectRatio: 1.0 / 1.0,
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.05,
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      '${Assets.aircon}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Gap(12.0),
                                  Text(
                                    'Basin & Sink',
                                    style: Theme.of(context).textTheme.subtitle2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: AspectRatio(
                          aspectRatio: 1.0 / 1.0,
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.05,
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      '${Assets.aircon}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Gap(12.0),
                                  Text(
                                    'Basin & Sink',
                                    style: Theme.of(context).textTheme.subtitle2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(12.0),
          Material(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Text(
                        'Customer Reviews',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text('What customers are saying about our services'),
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
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const Gap(12.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '4.7 out of 5 stars',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Text('Average rating of the service'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.format_quote,
                        color: Colors.amber,
                      ),
                      const Gap(12.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '100,000+ reviews',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Text('Of the service by users'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(4.0),
              ],
            ),
          ),
          const Gap(12.0),
          ReviewListTile(),
          ReviewListTile(),
          ReviewListTile(),
          const Divider(),
          Material(
            color: Colors.white,
            child: InkWell(
              onTap: () => Navigator.of(context).push(ReviewsPage.route()),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  'See All Reviews...',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Color(0xFF364b68)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
