import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'core/activity/activity_repository.dart';
import 'core/notification/notification_repository.dart';
import 'core/partner/partner_repository.dart';
import 'core/review/review_repository.dart';
import 'core/voucher/voucher_repository.dart';

void main() async {
  // final repository = GoogleMapsPlaces(apiKey: 'AIzaSyBTtyc3Uane42Zp-quBoH68Y57OZGF7pfc');
  // var searchByText = repository.buildQueryAutocompleteUrl(input: 'marigold');
  // print(searchByText);

  // final response = await repository.autocomplete('quezon city', radius: 10000);
  // print(response.predictions.length);

  // print('first');
  // response.predictions.forEach((element) {
  //   print('${element.description}');
  // });

  runApp(
    ProviderScope(
      overrides: [
        voucherRepositoryProvider.overrideWithValue(FakeVoucherRepository()),
        partnerRepositoryProvider.overrideWithValue(FakePartnerRepository()),
        reviewRepositoryProvider.overrideWithValue(FakeReviewRepository()),
        activityRepositoryProvider.overrideWithValue(FakeActivityRepository()),
        notificationRepositoryProvider.overrideWithValue(FakeNotificationRepository()),
      ],
      child: const App(),
    ),
  );
}
