import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:workcare/core/constant.dart';

import '../app_constants.dart';
import '../core/activity/activity.dart';
import '../features/activity_detail/activity_detail_page.dart';
import '../features/activity_detail/view/activity_order_page.dart';
import '../features/chat_support/view/chat_support_page.dart';
import '../features/enter_address/enter_address_page.dart';
import '../features/faq/view/faq_page.dart';
import '../features/reviews/view/reviews_page.dart';
import '../features/services/view/services_page.dart';
import '../service_showcase/view/service_showcase_page.dart';
import '../sign_in/controller/sign_in_controller.dart';
import '../sign_in/view/sign_in_page.dart';
import 'controller/home_controller.dart';

class HomePage {
  static const routeName = '/home';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => const HomeScreen(),
    );
  }
}

class HomeScreen extends HookWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    final currentIndex = useProvider(currentIndexProvider.select((value) => value.state));

    return Scaffold(
      bottomNavigationBar: HookBuilder(
        builder: (context) {
          final currentIndex = useProvider(currentIndexProvider.select((value) => value.state));

          return BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: currentIndex,
            backgroundColor: Color(0xFFFFFFFF),
            selectedItemColor: Color(0xFF33689C),
            unselectedItemColor: Color(0xFF646464),
            onTap: (value) => context.read(currentIndexProvider).state = value,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_time),
                label: 'Activity',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Account',
              ),
            ],
          );
        },
      ),
      appBar: () {
        if (currentIndex == 0) {
          return PreferredSize(
            preferredSize: Size.zero,
            child: Ink(
              color: const Color(0xFF33689C),
            ),
          );
        }

        if (currentIndex == 1) {
          return AppBar(
            title: Text('Activities'),
          );
        }

        if (currentIndex == 2) {
          return AppBar(
            title: Text('Notifications'),
          );
        }

        if (currentIndex == 3) {
          return PreferredSize(
            preferredSize: Size.zero,
            child: Ink(
              color: const Color(0xFF33689C),
            ),
          );
        }
      }(),
      body: HookBuilder(
        builder: (context) {
          final currentIndex = useProvider(currentIndexProvider.select((value) => value.state));

          return IndexedStack(
            index: currentIndex,
            children: [
              HomeListView(),
              ActivityListView(),
              NotificationListView(),
              ProfileScreen(),
            ],
          );
        },
      ),
    );
  }
}

class HomeListView extends StatelessWidget {
  const HomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Material(
          color: AppColors.darkBlue,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.pin_drop,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    const Gap(4.0),
                    InkWell(
                      onTap: () => Navigator.of(context).push(EnterAddressPage.route()),
                      child: Text(
                        'Project 3, Quezon City',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),
                      ),
                    ),
                    const Gap(4.0),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  ],
                ),
                const Gap(12.0),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(4.0),
                  child: Ink(
                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        const Gap(12.0),
                        Expanded(
                          child: Text(
                            'Search Available Services',
                            style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Gap(12.0),
        Material(
          color: AppColors.white,
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.caption!,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.of(context).push(ServiceShowcasePage.route()),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.0 / 1.0,
                                  child: Image.asset(
                                    '${Assets.cleaning}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(4.0),
                                Text(
                                  'General Cleaning\n',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.0 / 1.0,
                                  child: Image.asset(
                                    '${Assets.laundry}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(4.0),
                                Text(
                                  'Laundry\n',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.0 / 1.0,
                                  child: Image.asset(
                                    '${Assets.aircon}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(4.0),
                                Text(
                                  'Aircon Maintenance\n',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.0 / 1.0,
                                  child: Image.asset(
                                    '${Assets.carpentry}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(4.0),
                                Text(
                                  'Carpentry\n',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.0 / 1.0,
                                  child: Image.asset(
                                    '${Assets.electrical}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(4.0),
                                Text(
                                  'Electrical\n',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.0 / 1.0,
                                  child: Image.asset(
                                    '${Assets.plumbing}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(4.0),
                                Text(
                                  'Plumbing\n',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.0 / 1.0,
                                  child: Image.asset(
                                    '${Assets.painting}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(4.0),
                                Text(
                                  'Painting\n',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.of(context).push(ServicesPage.route()),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.0 / 1.0,
                                  child: Image.asset(
                                    '${Assets.others}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(4.0),
                                Text(
                                  'Other Services\n',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Ink(
          color: AppColors.lightBlue,
          height: 12.0,
        ),
        Material(
          color: Colors.white,
          child: AspectRatio(
            aspectRatio: 21.0 / 9.0,
            child: HookBuilder(
              builder: (context) {
                final asyncValue = useProvider(vouchersProvider);
                return asyncValue.when(
                  loading: () {
                    return ListView.separated(
                      padding: const EdgeInsets.all(16.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return AspectRatio(
                          aspectRatio: 16.0 / 9.0,
                          child: Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade200,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const Gap(16.0),
                    );
                  },
                  error: (error, stackTrace) {
                    return const Center(
                      child: Text('Something went wrong'),
                    );
                  },
                  data: (value) {
                    if (value == null) {
                      return const SizedBox.shrink();
                    }

                    if (value.isEmpty) {
                      return const Center(
                        child: Text('No vouchers yet'),
                      );
                    }

                    return ListView.separated(
                      padding: const EdgeInsets.all(16.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        final vouchers = [
                          Assets.voucher_one,
                          Assets.voucher_two,
                          Assets.voucher_three,
                          Assets.voucher_four,
                        ];

                        return Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(8.0),
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.indigo,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset('${vouchers[index]}'),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const Gap(16.0),
                    );
                  },
                );
              },
            ),
          ),
        ),
        const Divider(),
        Material(
          color: Colors.white,
          child: AspectRatio(
            aspectRatio: 28.0 / 9.0,
            child: Image.asset(
              '${Assets.techvolution}',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Material(
          color: Colors.white,
          child: Column(
            children: [
              Ink(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 8.0,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF101c2c),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(12.0),
                  ),
                ),
                child: Text(
                  'Featured Partners',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),
                ),
              ),
              AspectRatio(
                aspectRatio: 21.0 / 9.0,
                child: HookBuilder(
                  builder: (context) {
                    final asyncValue = useProvider(partnersProvider);
                    return asyncValue.when(
                      loading: () {
                        return ListView.separated(
                          padding: const EdgeInsets.all(16.0),
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return AspectRatio(
                              aspectRatio: 16.0 / 9.0,
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey.shade300,
                                highlightColor: Colors.grey.shade200,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const Gap(16.0),
                        );
                      },
                      error: (error, stackTrace) {
                        return const Center(
                          child: Text('Something went wrong'),
                        );
                      },
                      data: (value) {
                        if (value == null) {
                          return const SizedBox.shrink();
                        }

                        if (value.isEmpty) {
                          return const Center(
                            child: Text('No featured partners yet'),
                          );
                        }

                        return ListView.separated(
                          padding: const EdgeInsets.all(16.0),
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            final vouchers = [
                              Assets.partner_one,
                              Assets.partner_two,
                              Assets.partner_three,
                            ];

                            return Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(8.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.indigo,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset('${vouchers[index]}'),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const Gap(16.0),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const Divider(),
        HookBuilder(
          builder: (context) {
            final asyncValue = useProvider(reviewsProvider);
            return asyncValue.when(
              loading: () {
                return const AspectRatio(
                  aspectRatio: 21.0 / 9.0,
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 1.0,
                    ),
                  ),
                );
              },
              error: (error, stackTrace) {
                return AspectRatio(
                  aspectRatio: 21.0 / 9.0,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Retry'),
                    ),
                  ),
                );
              },
              data: (value) {
                return Material(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
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
                      ReviewListTile(),
                      const Divider(),
                      ReviewListTile(),
                      const Divider(),
                      ReviewListTile(),
                      const Divider(),
                      InkWell(
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
                    ],
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class ActivityListView extends HookWidget {
  const ActivityListView();

  @override
  Widget build(BuildContext context) {
    final asyncValue = useProvider(activitiesProvider);

    return asyncValue.when(
      loading: () {
        return const Center(
          child: CircularProgressIndicator(
            strokeWidth: 1.0,
          ),
        );
      },
      error: (error, stackTrace) {
        debugPrint(error.toString());
        debugPrint(stackTrace.toString());

        return const Center(
          child: Text('Something went wrong...'),
        );
      },
      data: (value) {
        if (value == null) {
          return const SizedBox.shrink();
        }

        if (value.isEmpty) {
          return const Center(
            child: Text('No activities yet'),
          );
        }

        return Material(
          color: Colors.white,
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: value.length,
            itemBuilder: (context, index) => ProviderScope(
              overrides: [
                activityProvider.overrideWithValue(value[index]),
                activityIndexProvider.overrideWithValue(index),
              ],
              child: const ActivityListTile(),
            ),
            separatorBuilder: (context, index) => const Divider(),
          ),
        );
      },
    );
  }
}

class NotificationListView extends ConsumerWidget {
  const NotificationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final asyncValue = watch(notificationsProvider);

    return asyncValue.when(
      loading: () {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Text('Something went wrong'),
        );
      },
      data: (value) {
        if (value == null) {
          return const SizedBox.shrink();
        }

        if (value.isEmpty) {
          return Center(
            child: Text('No notifications yet'),
          );
        }

        return ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) {
            final notification = value[index];

            return Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.local_offer_rounded),
                        backgroundColor: Colors.orange.shade50,
                        foregroundColor: Colors.orange,
                      ),
                      const Gap(16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '${notification.title}',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: notification.seen ? Theme.of(context).textTheme.subtitle1 : Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Gap(8.0),
                                Text(
                                  '5:23 PM',
                                  style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.black54),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '${notification.description}',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                                  ),
                                ),
                                const Gap(8.0),
                                Ink(
                                  height: 12.0,
                                  width: 12.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: notification.seen ? Colors.transparent : Colors.deepOrange,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.8),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return Material(
                elevation: 2.0,
                color: Color(0xFF33689C),
                child: Ink(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.32,
                  child: SafeArea(
                    child: Column(
                      children: [
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset(
                                'assets/images/logo.png',
                                width: constraints.maxWidth * 0.28,
                              ),
                            );
                          },
                        ),
                        Spacer(),
                        Text(
                          'Current Balance',
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white54),
                        ),
                        const Gap(8.0),
                        Text(
                          'P545.00',
                          style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return ListView(
                padding: EdgeInsets.all(24.0),
                children: [
                  Gap(constraints.maxHeight * 0.25),
                  CustomListTile(
                    leading: CircleAvatar(
                      child: Text('IJ'),
                    ),
                    title: 'Edit Profile',
                    subtitle: 'Lorem ipsum qwasar peter parter',
                    onTap: () {},
                  ),
                  const Gap(8.0),
                  CustomListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF33689C),
                      child: Icon(Icons.apps),
                    ),
                    title: 'Tutorial',
                    subtitle: 'Lorem ipsum qwasar peter parter',
                    onTap: () async {
                      const url = 'https://www.youtube.com/watch?v=CCh-6phChC0&ab_channel=MakeKnowledgeFree';
                      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
                    },
                  ),
                  const Gap(8.0),
                  CustomListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF33689C),
                      child: Icon(Icons.question_answer),
                    ),
                    title: 'Frequently Asked Questions',
                    subtitle: 'Lorem ipsum qwasar peter parter',
                    onTap: () {},
                  ),
                  const Gap(8.0),
                  CustomListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF33689C),
                      child: Icon(Icons.privacy_tip),
                    ),
                    title: 'Privacy Policy',
                    subtitle: 'Lorem ipsum qwasar peter parter',
                    onTap: () async {
                      const url = 'https://discord.com/privacy';
                      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
                    },
                  ),
                  const Gap(8.0),
                  CustomListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF33689C),
                      child: Icon(Icons.list),
                    ),
                    title: 'Terms of Service',
                    subtitle: 'Lorem ipsum qwasar peter parter',
                    onTap: () async {
                      const url = 'https://discord.com/terms';
                      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
                    },
                  ),
                  const Gap(8.0),
                  CustomListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF33689C),
                      child: Icon(Icons.info),
                    ),
                    title: 'About Us',
                    subtitle: 'Lorem ipsum qwasar peter parter',
                    onTap: () async {
                      const url = 'https://discord.com/company';
                      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
                    },
                  ),
                  const Gap(8.0),
                  ProviderListener<AsyncValue<CurrentUser?>>(
                    provider: signOutActionProvider,
                    onChange: (context, value) {
                      value.whenData((value) => Navigator.of(context).pushReplacement(SignInPage.route()));
                    },
                    child: HookBuilder(
                      builder: (context) {
                        final isIdle = useProvider(signOutActionProvider.select((value) => value.maybeWhen(loading: () => false, orElse: () => true)));

                        return CustomListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            foregroundColor: Color(0xFF33689C),
                            child: Icon(Icons.exit_to_app),
                          ),
                          title: isIdle ? 'Sign Out' : 'Signing Out...',
                          subtitle: 'Lorem ipsum qwasar peter parter',
                          onTap: () => context.read(signOutActionProvider.notifier).call(),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  final Widget leading;
  final String title;
  final String subtitle;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(8.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 12.0,
          ),
          child: Row(
            children: [
              leading,
              const Gap(16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatSupport extends StatelessWidget {
  const ChatSupport();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        padding: const EdgeInsets.all(21.0),
        children: [
          HelpListTile(
            leading: Icon(Icons.question_answer),
            title: Text('Frequently asked questions'),
            subtitle: Text('Ask a question and search our FAQs using our in app help tool'),
            actionButton: InkWell(
              onTap: () => Navigator.of(context).push(FaqPage.route()),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Ask a question'),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ),
          ),
          const Gap(16.0),
          HelpListTile(
            leading: Icon(Icons.support_agent),
            title: Text('Make a complaint'),
            subtitle: Text('Ask a question and search our FAQs using our in app help tool'),
            actionButton: InkWell(
              onTap: () => Navigator.of(context).push(ChatSupportPage.route()),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Make a complaint'),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ),
          ),
          const Gap(16.0),
          HelpListTile(
            leading: Icon(Icons.apps),
            title: Text('Tutorial on how to use the app'),
            subtitle: Text('Ask a question and search our FAQs using our in app help tool'),
            actionButton: InkWell(
              onTap: () async {
                const url = 'https://www.youtube.com/watch?v=CCh-6phChC0&ab_channel=MakeKnowledgeFree';
                await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Watch tutorial'),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HelpListTile extends StatelessWidget {
  const HelpListTile({
    Key? key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.actionButton,
  }) : super(key: key);

  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final Widget actionButton;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                leading,
                const Gap(16.0),
                Expanded(
                  child: DefaultTextStyle(
                    style: Theme.of(context).textTheme.subtitle1!,
                    child: title,
                  ),
                ),
              ],
            ),
            const Gap(16.0),
            const Divider(),
            const Gap(16.0),
            subtitle,
            const Gap(8.0),
            DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
              child: actionButton,
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewListTile extends StatelessWidget {
  const ReviewListTile();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 24.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Ink(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.darkBlue,
                      width: 2.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: AppColors.lightBlue,
                  ),
                ),
                const Gap(16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Joseph Santiago',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Color(0xFF364b68)),
                      ),
                    ],
                  ),
                ),
                const Gap(16.0),
                Text(
                  '5.0',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Color(0xFF364b68)),
                ),
                const Gap(4.0),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 16.0,
                ),
              ],
            ),
            const Gap(12.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Maganda ang serbisyo na ginawa ni Joseph. Mabilis nya nailinis ang aking kotse kaya ako ay hindi nalate sa aking meeting. Mabango att malinis ang kanyang ginawa sa aking kotse kaya sa susunud ay siya ulit ang aking kukunin para maglinis ng aking kotse.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final activityProvider = ScopedProvider<Activity>((_) => throw UnimplementedError());
final activityIndexProvider = ScopedProvider<int>((_) => throw UnimplementedError());

class ActivityListTile extends HookWidget {
  const ActivityListTile();

  @override
  Widget build(BuildContext context) {
    final activity = useProvider(activityProvider);

    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          if (activity.status == ActivityStatus.pending) {
            Navigator.of(context).push(ActivityDetailPage.route());
          } else {
            Navigator.of(context).push(ActivityOrderPage.route());
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Ink(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                decoration: BoxDecoration(
                  color: Color(activity.formattedStatusColor),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: Text(
                  '${activity.formattedStatus}',
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white),
                ),
              ),
              const Gap(12.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Date',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Services',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Gap(12.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'March 21, 2021',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Text(
                          'Disinfection, Wall Cleaning, Sofa Sterilization, Carpet Cleaning, Window Cleaning and more...',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                        ),
                        const Gap(12.0),
                        if (activity.provider == null) ...[
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 10.0,
                                backgroundColor: Color(activity.formattedStatusColor),
                                foregroundColor: Colors.white,
                                child: Text('₱'),
                              ),
                              const Gap(8.0),
                              Text(
                                'You have 3 bidders',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ] else ...[
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 10.0,
                                backgroundImage: NetworkImage('${activity.provider!.photoUrl}'),
                              ),
                              const Gap(8.0),
                              Text(
                                '${activity.provider!.displayName}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
