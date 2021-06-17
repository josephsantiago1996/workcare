import 'package:riverpod/riverpod.dart';

import '../client.dart';
import 'review.dart';

final reviewRepositoryProvider = Provider<IReviewRepository>((ref) => ReviewRepository(ref.read));

abstract class IReviewRepository {
  Future<List<Review>> find();
}

class ReviewRepository implements IReviewRepository {
  final Reader read;

  ReviewRepository(this.read);
  late final Client client = read(clientProvider);

  @override
  Future<List<Review>> find() {
    return client.findReview();
  }
}

class FakeReviewRepository implements IReviewRepository {
  @override
  Future<List<Review>> find() {
    return Future.delayed(Duration(seconds: 2), () {
      return [];
    });
  }
}
