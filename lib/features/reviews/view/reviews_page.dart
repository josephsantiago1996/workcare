import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controller/reviews_controller.dart';
import '../widget/review_list_tile.dart';

class ReviewsPage {
  static const String routeName = '/reviews';
  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      settings: RouteSettings(name: routeName),
      builder: (context) => const ReviewsScreen(),
    );
  }
}

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(),
        title: Text(
          'Customer Reviews',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: HookBuilder(
        builder: (context) {
          final asyncValue = useProvider(reviewsProvider);
          return asyncValue.when(
            loading: () {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 1.0,
                ),
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
                  child: Text('No reviews yet'),
                );
              }

              return ListView.separated(
                itemCount: 8,
                itemBuilder: (context, index) => const ReviewListTile(),
                separatorBuilder: (context, index) => const Divider(),
              );
            },
          );
        },
      ),
    );
  }
}
