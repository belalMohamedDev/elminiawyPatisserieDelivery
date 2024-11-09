import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(builder: (context, state) {
      final mapCubit = context.read<MapCubit>();

      Set<Polyline> polylines = {};

      if (state is GetRouteCoordinatesSuccess) {
        polylines.add(
          Polyline(
            polylineId: const PolylineId("route"),
            points: state.data,
            color: ColorManger.orangeColor,
            width: 5,
          ),
        );
      }

      return CustomGoogleMapMarkerBuilder(
        customMarkers: mapCubit.markers,
        builder: (p0, Set<Marker>? markers) {
          return GoogleMap(
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: mapCubit.targetPosition,
              zoom: 16,
            ),
            onMapCreated: (controller) => mapCubit.setMapController(controller),
            markers: markers ?? {},
            polylines: polylines,
          );
        },
      );
    });
  }
}



// void decodePolyline(String polylinePoints) {
//   final polyline = Polyline.Decode(encodedString: polylinePoints);
//   List<LatLng> decodedPath = polyline.decodedCoords
//       .map((coord) => LatLng(coord[0], coord[1]))
//       .toList();

//   calculateDirection(driverLocation, decodedPath);
// }

// void calculateDirection(LatLng driverLocation, List<LatLng> route) {
//   if (route.isNotEmpty) {
//     LatLng nextLocation = route.first;
//     double bearing = _calculateBearing(driverLocation, nextLocation);
//     print('Direction (Bearing) between driver and next location: $bearing');
//   }
// }
