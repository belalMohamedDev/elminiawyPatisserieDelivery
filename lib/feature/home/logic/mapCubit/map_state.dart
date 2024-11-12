part of 'map_cubit.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.initial() = Initial;

  const factory MapState.loading() = Loading;

  const factory MapState.loaded(
      LatLng currentPosition, Map<String, Marker> markers) = Loaded;

  const factory MapState.searchResults(List<Prediction> predictions) =
      SearchResults;

  const factory MapState.error(String message) = Error;

  const factory MapState.updatedMarkers(List<MarkerData> markers) =
      UpdatedMarkers;

  const factory MapState.setStringHomeLocationState(String homeLocation) =
      SetStringHomeLocationState;

  const factory MapState.loadThemeState(String value) = LoadThemeState;
  
  const factory MapState.startLoadingState() = StartLoadingState;
  const factory MapState.startLoadedState() = StartLoadedState;

  const factory MapState.getRouteCoordinatesLoading() =
      GetRouteCoordinatesLoading;

  const factory MapState.getRouteCoordinatesError(ApiErrorModel apiErrorModel) =
      GetRouteCoordinatesError;

  const factory MapState.getRouteCoordinatesSuccess(List<LatLng> data) =
      GetRouteCoordinatesSuccess;
}
