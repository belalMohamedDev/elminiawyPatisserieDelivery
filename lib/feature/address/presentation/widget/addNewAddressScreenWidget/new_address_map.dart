

import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class NewAddressGoogleMapWidget extends StatelessWidget {
  const NewAddressGoogleMapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        final mapCuibt = context.read<MapCubit>();

        return ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: SizedBox(
              height: 100.h,
              width: double.infinity,
              child: CustomGoogleMapMarkerBuilder(
                customMarkers: mapCuibt.markers,
                builder: (p0, Set<Marker>? markers) {
                  return GoogleMap(
                    onMapCreated: (controller) =>
                        mapCuibt.setNewAddressMapController(controller),
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                        target: mapCuibt.targetPosition, zoom: 12),
                    markers: markers ?? {},
                  );
                },
              ),
            ));
      },
    );
  }
}
