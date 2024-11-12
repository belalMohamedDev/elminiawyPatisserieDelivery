import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(builder: (context, state) {
      final mapCubit = context.read<MapCubit>();

   
      return CustomGoogleMapMarkerBuilder(
        customMarkers: mapCubit.markers,
        builder: (p0, Set<Marker>? markers) {
          return GoogleMap(
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: mapCubit.targetPosition,
              zoom: 16,
            ),
            onMapCreated: (controller) => mapCubit.onMapCreated(controller),
            markers: markers ?? {},
            polylines:mapCubit.polylines,
            style: mapCubit.mapTheme,
          );
        },
      );
    });
  }
}


