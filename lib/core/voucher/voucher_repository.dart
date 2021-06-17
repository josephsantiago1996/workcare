import 'package:riverpod/riverpod.dart';

import '../client.dart';
import 'voucher.dart';

final voucherRepositoryProvider = Provider<IVoucherRepository>((ref) => VoucherRepository(ref.read));

abstract class IVoucherRepository {
  Future<List<Voucher>> find();
}

class VoucherRepository implements IVoucherRepository {
  VoucherRepository(this.read);

  final Reader read;
  late final Client client = read(clientProvider);

  @override
  Future<List<Voucher>> find() {
    return client.findVoucher();
  }
}

class FakeVoucherRepository implements IVoucherRepository {
  @override
  Future<List<Voucher>> find() {
    return Future.delayed(Duration(seconds: 2), () {
      return [];
    });
  }
}
