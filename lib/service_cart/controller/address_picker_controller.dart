import 'package:google_maps_webservice/places.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/place/place_repository.dart';

final placesSearchResponseValueProvider = StateNotifierProvider.autoDispose<PlacesSearchResponseValue, AsyncValue<PlacesAutocompleteResponse?>>((ref) => PlacesSearchResponseValue(ref.read));

class PlacesSearchResponseValue extends StateNotifier<AsyncValue<PlacesAutocompleteResponse?>> {
  PlacesSearchResponseValue(this.read) : super(const AsyncValue.data(null)) {
    call(input: 'Quezon City');
  }

  final Reader read;

  void call({required String input}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => read(placesRepositoryProvider).autocomplete(input: input));
  }
}
