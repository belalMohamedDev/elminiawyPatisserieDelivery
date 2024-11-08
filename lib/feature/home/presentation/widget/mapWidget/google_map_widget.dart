import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(builder: (context, state) {
      final mapCubit = context.read<MapCubit>();

      if (state is GetRouteCoordinatesSuccess) {
        List<LatLng> allPoints = state.data;
        // List<LatLng> intermediatePoints =
        //     mapCubit.getIntermediatePoints(allPoints, 1);

        for (var i = 0; i < allPoints.length; i++) {
          final point = allPoints[i];
          mapCubit.markers.add(MarkerData(
            marker: Marker(
              markerId: MarkerId('delivery_point_$i'),
              position: point,
            ),
            child: const CustomMapMarkerWidget(
              isLinePoint: true,
            ),
          ));

          // if (i < intermediatePoints.length) {
          //   final intermediatePoint = intermediatePoints[i];

          //   mapCubit.markers.add(MarkerData(
          //     marker: Marker(
          //       markerId: MarkerId('intermediate_point_$i'),
          //       position: intermediatePoint,
          //       icon: BitmapDescriptor.defaultMarkerWithHue(
          //           BitmapDescriptor.hueGreen),
          //       infoWindow: InfoWindow(title: 'Intermediate Point $i'),
          //     ),
          //     child: const CustomMapMarkerWidget(
          //       isLinePoint: true,
          //       isSmallPoint: true,
          //     ),
          //   ));
          // }
        }
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
          );
        },
      );
    });
  }
}
