import 'package:riverpod/riverpod.dart';

import '../../core/activity/activity.dart';
import '../../core/activity/activity_repository.dart';
import '../../core/auth/auth_repository.dart';
import '../../core/notification/notification.dart';
import '../../core/notification/notification_repository.dart';
import '../../core/partner/partner.dart';
import '../../core/partner/partner_repository.dart';
import '../../core/review/review.dart';
import '../../core/review/review_repository.dart';
import '../../core/voucher/voucher.dart';
import '../../core/voucher/voucher_repository.dart';
import '../../sign_in/controller/sign_in_controller.dart';

final currentIndexProvider = StateProvider.autoDispose<int>((ref) => 0);

final vouchersProvider = StateNotifierProvider.autoDispose<Vouchers, AsyncValue<List<Voucher>?>>((ref) => Vouchers(ref.read));
final partnersProvider = StateNotifierProvider.autoDispose<Partners, AsyncValue<List<Partner>?>>((ref) => Partners(ref.read));
final reviewsProvider = StateNotifierProvider.autoDispose<Reviews, AsyncValue<List<Review>?>>((ref) => Reviews(ref.read));
final activitiesProvider = StateNotifierProvider.autoDispose<Activities, AsyncValue<List<Activity>?>>((ref) => Activities(ref.read));
final notificationsProvider = StateNotifierProvider.autoDispose<Notifications, AsyncValue<List<Notification>?>>((ref) => Notifications(ref.read));

final signOutActionProvider = StateNotifierProvider.autoDispose<SignOutAction, AsyncValue<CurrentUser?>>((ref) => SignOutAction(ref.read));

class Vouchers extends StateNotifier<AsyncValue<List<Voucher>?>> {
  Vouchers(this.read) : super(const AsyncValue.data(null)) {
    call();
  }

  final Reader read;
  late final IVoucherRepository repository = read(voucherRepositoryProvider);

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.find());
  }
}

class Partners extends StateNotifier<AsyncValue<List<Partner>?>> {
  Partners(this.read) : super(const AsyncValue.data(null)) {
    call();
  }

  final Reader read;
  late final IPartnerRepository repository = read(partnerRepositoryProvider);

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.find());
  }
}

class Reviews extends StateNotifier<AsyncValue<List<Review>?>> {
  Reviews(this.read) : super(const AsyncValue.data(null)) {
    call();
  }

  final Reader read;
  late final IReviewRepository repository = read(reviewRepositoryProvider);

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.find());
  }
}

class Activities extends StateNotifier<AsyncValue<List<Activity>?>> {
  Activities(this.read) : super(const AsyncValue.data(null)) {
    call();
  }

  final Reader read;
  late final IActivityRepository repository = read(activityRepositoryProvider);

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.find());
  }
}

class Notifications extends StateNotifier<AsyncValue<List<Notification>?>> {
  Notifications(this.read) : super(const AsyncValue.data(null)) {
    call();
  }

  final Reader read;
  late final INotificationRepository repository = read(notificationRepositoryProvider);

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.find());
  }
}

class SignOutAction extends StateNotifier<AsyncValue<CurrentUser?>> {
  SignOutAction(this.read) : super(const AsyncValue.data(null));

  final Reader read;
  late final IAuthRepository repository = read(authRepositoryProvider);

  CurrentUser? get user => read(currentUserProvider);
  set user(CurrentUser? user) => read(currentUserProvider.notifier).state = user;

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.signOut());
    state.whenData((value) => user = null);
  }
}
