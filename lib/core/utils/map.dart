

import 'dart:developer';

import '../../../../../core/common/shared/shared_imports.dart'; //

class AppUtils {
  static Future<Position?> determinePosition(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error(
          'Location services are disabled. Please enable them.');
    }

    log("Location services are enabled.");

    // Check permission status
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Navigator.pop(context);
        return Future.error('Location permissions are denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      log("Location permissions are permanently denied.");
      Navigator.pop(context);
      return Future.error('Location permissions are permanently denied.');
    }

    // Location permissions are granted, fetch current position using settings
    try {
      // Define location settings for different platforms
      LocationSettings locationSettings = const LocationSettings(
        accuracy: LocationAccuracy.medium, // Adjust accuracy as needed
        distanceFilter:
            100, // Receive updates only when location changes by 100 meters
        timeLimit: Duration(seconds: 10), // Limit time for getting location
      );

      // Fetch the position with the defined settings
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );

      log("Current position: ${position.latitude}, ${position.longitude}");
      return position;
    } catch (e) {
      log("Error getting location: $e");
      return Future.error('Error fetching location: $e');
    }
  }
}
