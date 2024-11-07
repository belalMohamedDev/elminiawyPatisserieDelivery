
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import '../../../../../core/common/shared/shared_imports.dart'; //

part 'map_state.dart';
part 'map_cubit.freezed.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit(this._homeRepositoryImplement) : super(const MapState.initial());

  final context = instance<GlobalKey<NavigatorState>>().currentState!.context;

  late GoogleMapController mapController; // Controller to manage Google Map

  final HomeRepositoryImplement _homeRepositoryImplement;

  List<MarkerData> markers = []; // List to hold custom markers

  bool isMapStyleLoaded = false;

  late String _mapTheme;

  // Default starting position on the map
  LatLng targetPosition = const LatLng(30.73148352751841, 31.79803739729101);

  MapType mapType = MapType.normal;

  void loadMapStyle() {
    if (!isMapStyleLoaded) {
      // Check if style is already loaded
      DefaultAssetBundle.of(context)
          .loadString("asset/json/map_theme.json")
          .then(
        (value) {
          _mapTheme = value;
          isMapStyleLoaded = true;
        },
      );
    }
  }

  // Set the map controller
  void setMapController(GoogleMapController controller) async {
    Completer<GoogleMapController> gmCompleter = Completer();
    gmCompleter.complete(controller);
    gmCompleter.future.then(
      (gmController) {
        mapController = gmController;
        mapController.setMapStyle(_mapTheme);
      },
    );
  }

  Future<Position?> getDriverCurrentLocation(BuildContext context) async {
    Position? position = await _determinePosition(context).timeout(
      const Duration(seconds: 10),
    );

    return position;
  }

  Future<void> fetchRouteCoordinates(LatLng origin, LatLng destination) async {
    emit(const MapState.getRouteCoordinatesLoading());

    final response =
        await _homeRepositoryImplement.getRouteCoordinates(origin, destination);

    response.when(
      success: (dataResponse) {
      
        List<LatLng> polylineCoordinates = [];
        PolylinePoints polylinePoints = PolylinePoints();
        String encodedPoints = dataResponse.routes![0].overviewPolyline!.points!;

        polylineCoordinates = polylinePoints
            .decodePolyline(encodedPoints)
            .map(
              (point) => LatLng(point.latitude, point.longitude),
            )
            .toList();

     
        emit(MapState.getRouteCoordinatesSuccess(polylineCoordinates));
      },
      failure: (error) {
        emit(
          MapState.getRouteCoordinatesError(error),
        );
      },
    );
  }

// Add a marker for the current location
  void adddriverLocationMarkerToMap(LatLng position) {
    targetPosition = position;

    // Remove any existing marker for the current location and add the new one
    markers.removeWhere(
      (markerData) => markerData.marker.markerId == const MarkerId('driver'),
    );

    final marker = MarkerData(
      marker: Marker(
        markerId: const MarkerId('driver'),
        position: position,
      ),
      child: const TextOnImage(driver: true),
    );

    markers.add(marker);
  }

  // Add a marker for the current location
  void addCustomerLocationMarkerToMap(LatLng position) {
    targetPosition = position;

    // Remove any existing marker for the current location and add the new one
    markers.removeWhere(
      (markerData) => markerData.marker.markerId == const MarkerId('customer'),
    );

    final marker = MarkerData(
      marker: Marker(
        markerId: const MarkerId('customer'),
        position: position,
      ),
      child: const TextOnImage(),
    );

    markers.add(marker);
  }

  // Move the map camera to the specified position
  Future<void> moveToLocation({required LatLng position}) async {
    emit(const MapState.loading());

    try {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: position, zoom: 18),
        ),
      );
    } catch (e) {
      emit(MapState.error("Error moving to location: $e"));
    }
  }

  // Determine the user's current position using Geolocator
  Future<Position?> _determinePosition(BuildContext context) async {
    return await AppUtils.determinePosition(context);
  }
}
