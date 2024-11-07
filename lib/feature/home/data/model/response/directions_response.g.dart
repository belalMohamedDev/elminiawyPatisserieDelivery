// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionsResponse _$DirectionsResponseFromJson(Map<String, dynamic> json) =>
    DirectionsResponse(
      geocodedWaypoints: (json['geocodedWaypoints'] as List<dynamic>?)
          ?.map((e) =>
              DirectionsGeocodedWaypoints.fromJson(e as Map<String, dynamic>))
          .toList(),
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => DirectionsRoutes.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$DirectionsResponseToJson(DirectionsResponse instance) =>
    <String, dynamic>{
      'geocodedWaypoints': instance.geocodedWaypoints,
      'routes': instance.routes,
      'status': instance.status,
    };

DirectionsGeocodedWaypoints _$DirectionsGeocodedWaypointsFromJson(
        Map<String, dynamic> json) =>
    DirectionsGeocodedWaypoints(
      geocoderStatus: json['geocoderStatus'] as String?,
      placeId: json['placeId'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DirectionsGeocodedWaypointsToJson(
        DirectionsGeocodedWaypoints instance) =>
    <String, dynamic>{
      'geocoderStatus': instance.geocoderStatus,
      'placeId': instance.placeId,
      'types': instance.types,
    };

DirectionsRoutes _$DirectionsRoutesFromJson(Map<String, dynamic> json) =>
    DirectionsRoutes(
      bounds: json['bounds'] == null
          ? null
          : DirectionsBounds.fromJson(json['bounds'] as Map<String, dynamic>),
      copyrights: json['copyrights'] as String?,
      legs: (json['legs'] as List<dynamic>?)
          ?.map((e) => DirectionsLegs.fromJson(e as Map<String, dynamic>))
          .toList(),
      overviewPolyline: json['overview_polyline'] == null
          ? null
          : DirectionsPolyline.fromJson(
              json['overview_polyline'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      waypointOrder: (json['waypointOrder'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$DirectionsRoutesToJson(DirectionsRoutes instance) =>
    <String, dynamic>{
      'bounds': instance.bounds,
      'copyrights': instance.copyrights,
      'legs': instance.legs,
      'overview_polyline': instance.overviewPolyline,
      'summary': instance.summary,
      'warnings': instance.warnings,
      'waypointOrder': instance.waypointOrder,
    };

DirectionsBounds _$DirectionsBoundsFromJson(Map<String, dynamic> json) =>
    DirectionsBounds(
      northeast: json['northeast'] == null
          ? null
          : DirectionsNortheast.fromJson(
              json['northeast'] as Map<String, dynamic>),
      southwest: json['southwest'] == null
          ? null
          : DirectionsNortheast.fromJson(
              json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DirectionsBoundsToJson(DirectionsBounds instance) =>
    <String, dynamic>{
      'northeast': instance.northeast,
      'southwest': instance.southwest,
    };

DirectionsNortheast _$DirectionsNortheastFromJson(Map<String, dynamic> json) =>
    DirectionsNortheast(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DirectionsNortheastToJson(
        DirectionsNortheast instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

DirectionsLegs _$DirectionsLegsFromJson(Map<String, dynamic> json) =>
    DirectionsLegs(
      distance: json['distance'] == null
          ? null
          : DirectionsDistance.fromJson(
              json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : DirectionsDistance.fromJson(
              json['duration'] as Map<String, dynamic>),
      endAddress: json['endAddress'] as String?,
      endLocation: json['endLocation'] == null
          ? null
          : DirectionsNortheast.fromJson(
              json['endLocation'] as Map<String, dynamic>),
      startAddress: json['startAddress'] as String?,
      startLocation: json['startLocation'] == null
          ? null
          : DirectionsNortheast.fromJson(
              json['startLocation'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => DirectionsSteps.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DirectionsLegsToJson(DirectionsLegs instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'endAddress': instance.endAddress,
      'endLocation': instance.endLocation,
      'startAddress': instance.startAddress,
      'startLocation': instance.startLocation,
      'steps': instance.steps,
    };

DirectionsDistance _$DirectionsDistanceFromJson(Map<String, dynamic> json) =>
    DirectionsDistance(
      text: json['text'] as String?,
      value: (json['value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DirectionsDistanceToJson(DirectionsDistance instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

DirectionsSteps _$DirectionsStepsFromJson(Map<String, dynamic> json) =>
    DirectionsSteps(
      distance: json['distance'] == null
          ? null
          : DirectionsDistance.fromJson(
              json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : DirectionsDistance.fromJson(
              json['duration'] as Map<String, dynamic>),
      endLocation: json['endLocation'] == null
          ? null
          : DirectionsNortheast.fromJson(
              json['endLocation'] as Map<String, dynamic>),
      htmlInstructions: json['htmlInstructions'] as String?,
      polyline: json['polyline'] == null
          ? null
          : DirectionsPolyline.fromJson(
              json['polyline'] as Map<String, dynamic>),
      startLocation: json['startLocation'] == null
          ? null
          : DirectionsNortheast.fromJson(
              json['startLocation'] as Map<String, dynamic>),
      travelMode: json['travelMode'] as String?,
      maneuver: json['maneuver'] as String?,
    );

Map<String, dynamic> _$DirectionsStepsToJson(DirectionsSteps instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'endLocation': instance.endLocation,
      'htmlInstructions': instance.htmlInstructions,
      'polyline': instance.polyline,
      'startLocation': instance.startLocation,
      'travelMode': instance.travelMode,
      'maneuver': instance.maneuver,
    };

DirectionsPolyline _$DirectionsPolylineFromJson(Map<String, dynamic> json) =>
    DirectionsPolyline(
      points: json['points'] as String?,
    );

Map<String, dynamic> _$DirectionsPolylineToJson(DirectionsPolyline instance) =>
    <String, dynamic>{
      'points': instance.points,
    };
