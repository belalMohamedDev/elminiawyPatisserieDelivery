import 'dart:math';

import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import '../../../../../core/common/shared/shared_imports.dart'; //

part 'map_state.dart';
part 'map_cubit.freezed.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit(this._homeRepositoryImplement) : super(const MapState.initial());

  final context = instance<GlobalKey<NavigatorState>>().currentState!.context;

  final Completer<GoogleMapController> _controllerCompleter =
      Completer<GoogleMapController>();

  // late GoogleMapController mapController; // Controller to manage Google Map

  final HomeRepositoryImplement _homeRepositoryImplement;

  List<MarkerData> markers = []; // List to hold custom markers

  Set<Polyline> polylines = {};

  late LatLng driverLocation;

  String? mapTheme;

  // Default starting position on the map
  LatLng targetPosition = const LatLng(30.73148352751841, 31.79803739729101);

  MapType mapType = MapType.normal;

  Timer? _driverLocationTimer;

  LatLng? customerLocation;

  void drawPolylines(List<LatLng> polylineCoordinates) {
    polylines.add(
      Polyline(
        polylineId: const PolylineId("route"),
        points: polylineCoordinates,
        color: ColorManger.orangeColor,
        width: 5,
      ),
    );
  }

  void loadMapStyle() {
    // Check if style is already loaded
    DefaultAssetBundle.of(context).loadString(JsonAsset.map).then(
      (value) {
        mapTheme = value;
        emit(MapState.loadThemeState(mapTheme!));
      },
    );
  }

  Future<void> handleDirectorButton(BuildContext context) async {
    stopTrackingDriver();
    // Get the driver's current location
    Position? position = await getDriverCurrentLocation(context);

    if (position != null) {
      // Fetch and display route coordinates between driver and customer
      fetchRouteCoordinates(driverLocation, customerLocation!);

      // Add markers for driver  locations

      addDriverLocationMarkerToMap(position: driverLocation);

      // Move camera to the driver location

      LatLng centerPoint = LatLng(
        (driverLocation.latitude + customerLocation!.latitude) / 2,
        (driverLocation.longitude + customerLocation!.longitude) / 2,
      );

      await moveToLocation(
          position: centerPoint, zoom: 14, bearing: 60, tilt: 12);
    }
  }

  bool isFirstStep = true;

  Future<void> startTrackingDriver() async {
    emit(const MapState.startLoadingState());
    _driverLocationTimer = Timer.periodic(
      Duration(
          seconds: isFirstStep
              ? 0
              : 5), // Initial delay if first step, then 5 seconds
      (timer) async {
        if (isFirstStep) {
          isFirstStep =
              false; // Set to false after the first call to ensure 5-second interval
          timer.cancel(); // Cancel current timer
          await startTrackingDriver(); // Restart timer with 5-second interval
          return;
        }

        Position? position = await getDriverCurrentLocation(context);
        if (position != null) {
          driverLocation = LatLng(position.latitude, position.longitude);
          if (polylines.isEmpty) {
            // Fetch and display route coordinates between driver and customer
            fetchRouteCoordinates(driverLocation, customerLocation!);
          }

          // Find the closest point on the polyline to the current driver location
          LatLng nearestPoint =
              getNearestPointOnPolyline(driverLocation, polylineCoordinates);

          // Get the next point on the polyline for bearing calculation
          int nextIndex = polylineCoordinates.indexOf(nearestPoint) + 1;
          if (nextIndex < polylineCoordinates.length) {
            LatLng nextPoint = polylineCoordinates[nextIndex];
            double bearing = calculateBearing(nearestPoint, nextPoint);

            // Add/update marker for driver’s current location
            addDriverLocationMarkerToMap(position: driverLocation);

            // Move the map to the driver's location with the correct bearing
            moveToLocation(
              position: driverLocation,
              bearing: bearing,
            );

            // Update the polyline to only show the remaining path from the driver’s position
            updateRemainingPolyline(driverLocation);
          }
        }
        emit(const MapState.startLoadedState());
      },
    );
  }

  LatLng getNearestPointOnPolyline(
      LatLng driverLocation, List<LatLng> polylineCoordinates) {
    double minDistance = double.infinity;
    LatLng nearestPoint = polylineCoordinates.first;

    for (LatLng point in polylineCoordinates) {
      double distance = calculateDistance(driverLocation, point);
      if (distance < minDistance) {
        minDistance = distance;
        nearestPoint = point;
      }
    }
    return nearestPoint;
  }



  void updateRemainingPolyline(LatLng driverLocation) {
    List<LatLng> remainingPolyline = [driverLocation];

    remainingPolyline
        .addAll(polylineCoordinates.where((point) => point != driverLocation));

    drawPolylines(remainingPolyline);
  }

  double calculateDistance(LatLng point1, LatLng point2) {
    final double lat1 = point1.latitude;
    final double lon1 = point1.longitude;
    final double lat2 = point2.latitude;
    final double lon2 = point2.longitude;

    // Simple haversine formula for distance
    final double dLat = (lat2 - lat1) * (3.141592653589793 / 180);
    final double dLon = (lon2 - lon1) * (3.141592653589793 / 180);
    final double a = 0.5 -
        cos(dLat) / 2 +
        cos(lat1 * (3.141592653589793 / 180)) *
            cos(lat2 * (3.141592653589793 / 180)) *
            (1 - cos(dLon)) /
            2;

    return 12742 * asin(sqrt(a)); // 2 * R * asin
  }

  void stopTrackingDriver() {
    _driverLocationTimer?.cancel();
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
    initialBearing = (initialBearing * 180 / pi + 360) % 360;

    return initialBearing;
  }

  List<LatLng> polylineCoordinates = [];
  Future<void> fetchRouteCoordinates(LatLng origin, LatLng destination) async {
    emit(const MapState.getRouteCoordinatesLoading());

    final response =
        await _homeRepositoryImplement.getRouteCoordinates(origin, destination);

    response.when(
      success: (dataResponse) {
        PolylinePoints polylinePoints = PolylinePoints();
        String encodedPoints =
            dataResponse.routes![0].overviewPolyline!.points!;

        polylineCoordinates = polylinePoints
            .decodePolyline(encodedPoints)
            .map((point) => LatLng(point.latitude, point.longitude))
            .toList();

        if (polylineCoordinates.length > 1) {
          drawPolylines(polylineCoordinates);

          emit(MapState.getRouteCoordinatesSuccess(polylineCoordinates));
        }
      },
      failure: (error) {
        emit(MapState.getRouteCoordinatesError(error));
      },
    );
  }

// Initialize mapController in the map's onMapCreated callback
  void onMapCreated(GoogleMapController controller) {
    if (!_controllerCompleter.isCompleted) {
      _controllerCompleter.complete(controller);
    }
  }

  Future<Position?> getDriverCurrentLocation(BuildContext context) async {
    Position? position = await _determinePosition(context).timeout(
      const Duration(seconds: 10),
    );

    driverLocation = LatLng(position!.latitude, position.longitude);

    return position;
  }

// Add a marker for the current location
  void addDriverLocationMarkerToMap({required LatLng position}) {
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
  void addCustomerLocationMarkerToMap() {
    // Remove any existing marker for the current location and add the new one
    markers.removeWhere(
      (markerData) => markerData.marker.markerId == const MarkerId('customer'),
    );

    final marker = MarkerData(
      marker: Marker(
        markerId: const MarkerId('customer'),
        position: customerLocation!,
      ),
      child: const CustomMapMarkerWidget(),
    );

    markers.add(marker);
  }

  // Move the map camera to the specified position
  Future<void> moveToLocation(
      {required LatLng position,
      double? bearing,
      double tilt = 60,
      double zoom = 21}) async {
    emit(const MapState.loading());

    try {
      final GoogleMapController controller = await _controllerCompleter.future;

      await controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: position,
            zoom: zoom,
            tilt: tilt,
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

  Future<void> handleAcceptOrderSuccess(BuildContext context) async {
    // Get the driver's current location
    Position? position = await getDriverCurrentLocation(context);

    if (position != null) {
      // Fetch and display route coordinates between driver and customer
      fetchRouteCoordinates(driverLocation, customerLocation!);

      // Add markers for driver and customer locations

      addCustomerLocationMarkerToMap();

      // Move camera to the driver location
    }
  }
}
