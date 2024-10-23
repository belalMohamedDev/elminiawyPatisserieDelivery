import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({
    super.key,
    required this.mapCubit,
  });

  final MapCubit mapCubit;

  @override
  Widget build(BuildContext context) {
    return CustomGoogleMapMarkerBuilder(
      customMarkers: mapCubit.markers,
      builder: (p0, Set<Marker>? markers) {
        return GoogleMap(
          zoomControlsEnabled: false,
          initialCameraPosition:
              CameraPosition(target: mapCubit.targetPosition, zoom: 16),
          onMapCreated: (controller) => mapCubit.setMapController(controller),
          markers: markers ?? {},
          mapType: mapCubit.mapType,
          onTap: (argument) async {
            mapCubit.checkAddressAvailableFetch(argument);

            mapCubit.addCurrentLocationMarkerToMap(argument);
          },
        );
      },
    );
  }
}
