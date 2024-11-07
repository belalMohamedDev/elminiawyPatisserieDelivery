
import 'dart:developer';

import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        final mapCubit = context.read<MapCubit>();
        Set<Polyline> polylines = {}; // Adjusted variable name

        if (state is GetRouteCoordinatesSuccess) {
          polylines.add(
            Polyline(
              polylineId: const PolylineId("route"),
              points: state.data, // Ensure data is in List<LatLng> format
              color: Colors.orange,
              width: 5,
            ),
          );

          log('popnmmm ${state.data}');
        }

        return CustomGoogleMapMarkerBuilder(
          customMarkers: mapCubit.markers,
          builder: (p0, Set<Marker>? markers) {
            return GoogleMap(
              zoomControlsEnabled: false,
              initialCameraPosition:
                  CameraPosition(target: mapCubit.targetPosition, zoom: 16),
              onMapCreated: (controller) =>
                  mapCubit.setMapController(controller),
              markers: markers ?? {},
              polylines: polylines,
            );
          },
        );
      },
    );
  }
}
