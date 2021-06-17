import 'package:riverpod/riverpod.dart';
import 'package:workcare/core/service/service.dart';

import '../client.dart';

final serviceRepositoryProvider = Provider<IServiceRepository>((ref) => ServiceRepository(ref.read));

abstract class IServiceRepository {
  Future<List<Service>> find();
}

class ServiceRepository implements IServiceRepository {
  final Reader read;

  ServiceRepository(this.read);

  late final Client client = read(clientProvider);
  // Client get client => _client ?? (() => _client = read(clientProvider))();

  @override
  Future<List<Service>> find() {
    return client.findService();
  }
}
