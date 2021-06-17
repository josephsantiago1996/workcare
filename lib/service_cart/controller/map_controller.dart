import 'package:geolocator/geolocator.dart';
import 'package:riverpod/riverpod.dart';

final getCurrentPositionActionProvider = StateNotifierProvider.autoDispose((ref) => GetCurrentPositionAction(ref.read));

class GetCurrentPositionAction extends StateNotifier<AsyncValue<Position>> {
  GetCurrentPositionAction(state) : super(state);

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => Geolocator.getCurrentPosition());
  }
}
