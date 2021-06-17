import 'package:google_maps_webservice/places.dart';
import 'package:riverpod/riverpod.dart';

final googleMapPlacesProvider = Provider((ref) => GoogleMapsPlaces(apiKey: 'AIzaSyCinXqdH4gnSSwVbmNa_lTyBeklIjRHEec'));
final placesRepositoryProvider = Provider<IPlaceRepository>((ref) => PlaceRepository(ref.read));

abstract class IPlaceRepository {
  Future<PlacesDetailsResponse> getDetailsByPlaceId({required String placeId});
  Future<PlacesSearchResponse> searchByText({required String query});
  Future<PlacesSearchResponse> searchNearbyWithRadius({required double lat, required double lng, required num radius});
  Future<PlacesSearchResponse> searchNearbyWithRankby({required double lat, required double lng, required String rankBy});
  Future<PlacesAutocompleteResponse> autocomplete({required String input});
}

class PlaceRepository implements IPlaceRepository {
  const PlaceRepository(this.read);

  final Reader read;

  @override
  Future<PlacesDetailsResponse> getDetailsByPlaceId({required String placeId}) {
    return read(googleMapPlacesProvider).getDetailsByPlaceId(placeId);
  }

  @override
  Future<PlacesSearchResponse> searchByText({required String query}) {
    return read(googleMapPlacesProvider).searchByText(query);
  }

  @override
  Future<PlacesSearchResponse> searchNearbyWithRadius({required double lat, required double lng, required num radius}) {
    return read(googleMapPlacesProvider).searchNearbyWithRadius(Location(lat: lat, lng: lng), radius);
  }

  @override
  Future<PlacesSearchResponse> searchNearbyWithRankby({required double lat, required double lng, required String rankBy}) {
    return read(googleMapPlacesProvider).searchNearbyWithRankBy(Location(lat: lat, lng: lng), rankBy);
  }

  @override
  Future<PlacesAutocompleteResponse> autocomplete({required String input}) {
    return read(googleMapPlacesProvider).autocomplete(input);
  }
}
