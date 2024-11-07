import 'package:json_annotation/json_annotation.dart';

part 'directions_response.g.dart';

@JsonSerializable()
class DirectionsResponse {
  List<DirectionsGeocodedWaypoints>? geocodedWaypoints;
  List<DirectionsRoutes>? routes;
  String? status;

  DirectionsResponse({this.geocodedWaypoints, this.routes, this.status});

  factory DirectionsResponse.fromJson(Map<String, dynamic> json) =>
      _$DirectionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsResponseToJson(this);
}

@JsonSerializable()
class DirectionsGeocodedWaypoints {
  String? geocoderStatus;
  String? placeId;
  List<String>? types;

  DirectionsGeocodedWaypoints({this.geocoderStatus, this.placeId, this.types});

  factory DirectionsGeocodedWaypoints.fromJson(Map<String, dynamic> json) =>
      _$DirectionsGeocodedWaypointsFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsGeocodedWaypointsToJson(this);
}

@JsonSerializable()
class DirectionsRoutes {
  DirectionsBounds? bounds;
  String? copyrights;
  List<DirectionsLegs>? legs;
   @JsonKey(name: "overview_polyline")
  DirectionsPolyline? overviewPolyline;
  String? summary;
  List<String>? warnings;
  List<int>? waypointOrder; // If the waypoints are indices or similar


  DirectionsRoutes({
    this.bounds,
    this.copyrights,
    this.legs,
    this.overviewPolyline,
    this.summary,
    this.warnings,
    this.waypointOrder,
  });

  factory DirectionsRoutes.fromJson(Map<String, dynamic> json) => _$DirectionsRoutesFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsRoutesToJson(this);
}

@JsonSerializable()
class DirectionsBounds {
  DirectionsNortheast? northeast;
  DirectionsNortheast? southwest;

  DirectionsBounds({this.northeast, this.southwest});

  factory DirectionsBounds.fromJson(Map<String, dynamic> json) => _$DirectionsBoundsFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsBoundsToJson(this);
}

@JsonSerializable()
class DirectionsNortheast {
  double? lat;
  double? lng;

  DirectionsNortheast({this.lat, this.lng});

  factory DirectionsNortheast.fromJson(Map<String, dynamic> json) =>
      _$DirectionsNortheastFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsNortheastToJson(this);
}

@JsonSerializable()
class DirectionsLegs {
  DirectionsDistance? distance;
  DirectionsDistance? duration;
  String? endAddress;
  DirectionsNortheast? endLocation;
  String? startAddress;
  DirectionsNortheast? startLocation;
  List<DirectionsSteps>? steps;

  DirectionsLegs({
    this.distance,
    this.duration,
    this.endAddress,
    this.endLocation,
    this.startAddress,
    this.startLocation,
    this.steps,

  });

  factory DirectionsLegs.fromJson(Map<String, dynamic> json) => _$DirectionsLegsFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsLegsToJson(this);
}

@JsonSerializable()
class DirectionsDistance {
  String? text;
  int? value;

  DirectionsDistance({this.text, this.value});

  factory DirectionsDistance.fromJson(Map<String, dynamic> json) =>
      _$DirectionsDistanceFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsDistanceToJson(this);
}

@JsonSerializable()
class DirectionsSteps {
 DirectionsDistance? distance;
  DirectionsDistance? duration;
  DirectionsNortheast? endLocation;
  String? htmlInstructions;
  DirectionsPolyline? polyline;
 DirectionsNortheast? startLocation;
  String? travelMode;
  String? maneuver;

  DirectionsSteps({
    this.distance,
    this.duration,
    this.endLocation,
    this.htmlInstructions,
    this.polyline,
    this.startLocation,
    this.travelMode,
    this.maneuver,
  });

  factory DirectionsSteps.fromJson(Map<String, dynamic> json) => _$DirectionsStepsFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsStepsToJson(this);
}

@JsonSerializable()
class DirectionsPolyline {
  String? points;

  DirectionsPolyline({this.points});

  factory DirectionsPolyline.fromJson(Map<String, dynamic> json) =>
      _$DirectionsPolylineFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsPolylineToJson(this);
}
