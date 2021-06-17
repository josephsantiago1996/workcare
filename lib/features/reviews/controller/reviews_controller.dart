import 'package:riverpod/riverpod.dart';

import '../../../core/review/review.dart';
import '../../../core/review/review_repository.dart';

final reviewsProvider = StateNotifierProvider.autoDispose<Reviews, AsyncValue<List<Review>?>>((ref) => Reviews(ref.read));

class Reviews extends StateNotifier<AsyncValue<List<Review>?>> {
  Reviews(this.read) : super(const AsyncValue.data(null)) {
    call();
  }

  final Reader read;

  late final IReviewRepository repository = read(reviewRepositoryProvider);
  // IReviewRepository get repository => _repository ?? (() => _repository = read(reviewRepositoryProvider))();

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await Future.delayed(Duration(seconds: 2));
      return repository.find();
    });
    state = const AsyncValue.data([]);
  }
}
