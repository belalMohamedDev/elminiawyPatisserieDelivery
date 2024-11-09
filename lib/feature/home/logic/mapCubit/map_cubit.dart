import 'dart:math';

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

  late LatLng driverLocation;

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

  double calculateBearing(LatLng start, LatLng end) {
    double lat1 = start.latitude * pi / 180;
    double lon1 = start.longitude * pi / 180;
    double lat2 = end.latitude * pi / 180;
    double lon2 = end.longitude * pi / 180;

    double dLon = lon2 - lon1;

    double y = sin(dLon) * cos(lat2);
    double x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLon);

    double initialBearing = atan2(y, x);
    initialBearing =
        (initialBearing * 180 / pi + 360) % 360; // تحويله لدرجات من 0° إلى 360°

    return initialBearing;
  }

  void decodePolyline(String polylinePoints, LatLng driverLocation) {
    PolylinePoints polylinePointsDecoder = PolylinePoints();
    List<PointLatLng> decodedPathPoints =
        polylinePointsDecoder.decodePolyline(polylinePoints);

    List<LatLng> decodedPath = decodedPathPoints
        .map((point) => LatLng(point.latitude, point.longitude))
        .toList();

    for (var point in decodedPath) {
      print('Decoded Point: ${point.latitude}, ${point.longitude}');
    }

    if (decodedPath.isNotEmpty) {
      double bearing = calculateBearing(driverLocation, decodedPath.first);
      print('Bearing to next location: $bearing');
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

    driverLocation = LatLng(position!.latitude, position.longitude);

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
        String encodedPoints =
            dataResponse.routes![0].overviewPolyline!.points!;

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
  void adddriverLocationMarkerToMap({required LatLng position}) {
    targetPosition = position;
    markers.removeWhere(
      (markerData) => markerData.marker.markerId == const MarkerId('driver'),
    );

    final marker = MarkerData(
      marker: Marker(
        markerId: const MarkerId('driver'),
        position: position,
      ),
      child: const CustomMapMarkerWidget(driver: true),
    );

    markers.add(marker);
    emit(MapState.updatedMarkers(markers));
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
      child: const CustomMapMarkerWidget(),
    );

    markers.add(marker);
  }

  // Move the map camera to the specified position
  Future<void> moveToLocation(
      {required LatLng position, double? bearing}) async {
    emit(const MapState.loading());

    try {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: position,
            zoom: 70,
            bearing: bearing ?? 0,
          ),
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

  Future<void> handleAcceptOrderSuccess(
      LatLng customerLocation, BuildContext context) async {
    // Get the driver's current location
    Position? position = await getDriverCurrentLocation(context);

    if (position != null) {
      // Fetch and display route coordinates between driver and customer
      fetchRouteCoordinates(driverLocation, customerLocation);

      // Add markers for driver and customer locations
      adddriverLocationMarkerToMap(position: driverLocation);

      addCustomerLocationMarkerToMap(customerLocation);

      // Move camera to the driver location
      await moveToLocation(
        position: driverLocation,
      );
    }
  }
}
