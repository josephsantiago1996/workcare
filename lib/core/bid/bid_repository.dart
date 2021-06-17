import 'package:riverpod/riverpod.dart';
import 'package:workcare/core/client.dart';

import 'bid.dart';

abstract class IBidRepository {
  Future<List<Bid>> find();
}

class BidRepository implements IBidRepository {
  BidRepository(this.read);

  final Reader read;

  @override
  Future<List<Bid>> find() {
    return read(clientProvider).findBid('activityId');
  }
}
