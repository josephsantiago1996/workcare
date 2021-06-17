import 'package:riverpod/riverpod.dart';

import '../client.dart';
import 'partner.dart';

final partnerRepositoryProvider = Provider<IPartnerRepository>((ref) => PartnerRepository(ref.read));

abstract class IPartnerRepository {
  Future<List<Partner>> find();
}

class PartnerRepository implements IPartnerRepository {
  PartnerRepository(this.read);

  final Reader read;
  late final Client client = read(clientProvider);

  @override
  Future<List<Partner>> find() {
    return client.findPartner();
  }
}

class FakePartnerRepository implements IPartnerRepository {
  @override
  Future<List<Partner>> find() {
    return Future.delayed(Duration(seconds: 2), () {
      return [];
    });
  }
}
