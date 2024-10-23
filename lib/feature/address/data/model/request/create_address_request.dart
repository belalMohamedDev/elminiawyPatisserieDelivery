import 'package:json_annotation/json_annotation.dart';

part 'create_address_request.g.dart';

@JsonSerializable()
class CreateAddressRequestBody {
  CreateAddressRequestBody({
    this.alias,
    this.buildingName,
    this.apartmentNumber,
    this.floor,
    this.region,
    this.additionalDirections,
    this.streetName,
    this.phone,
    this.addressLabel,
    this.latitude,
    this.longitude,
    this.nearbyStoreAddress,
  });

  final String? alias;
  final String? buildingName;
  final String? apartmentNumber;
  final String? floor;
  final Map<String, String>? region;
  final String? additionalDirections;
  final String? streetName;
  final String? phone;
  final String? addressLabel;
  final String? latitude;
  final String? longitude;
  final String? nearbyStoreAddress;

  factory CreateAddressRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAddressRequestBodyToJson(this);

 Map<String, dynamic> toFilteredJson() {
    final json = <String, dynamic>{};

    if (alias != null && alias!.isNotEmpty) json['alias'] = alias;
    if (buildingName != null && buildingName!.isNotEmpty)json['buildingName'] = buildingName;
    if (apartmentNumber != null && apartmentNumber!.isNotEmpty)json['apartmentNumber'] = apartmentNumber;
    if (floor != null && floor!.isNotEmpty) json['floor'] = floor;

    if (region != null) {
      final regionJson = <String, dynamic>{};

      if (region!['en'] != null && region!['en']!.isNotEmpty) {
        regionJson['en'] = region!['en'];
      }
      if (region!['ar'] != null && region!['ar']!.isNotEmpty) {
        regionJson['ar'] = region!['ar'];
      }

      if (regionJson.isNotEmpty) {
        json['region'] = regionJson;
      }
    }
    if (additionalDirections != null && additionalDirections!.isNotEmpty)json['additionalDirections'] = additionalDirections;
    if (streetName != null && streetName!.isNotEmpty)json['streetName'] = streetName;
    if (phone != null && phone!.isNotEmpty) json['phone'] = phone;
    if (addressLabel != null && addressLabel!.isNotEmpty) json['addressLabel'] = addressLabel;
    if (latitude != null && latitude!.isNotEmpty) json['latitude'] = latitude;
    if (longitude != null && longitude!.isNotEmpty) json['longitude'] = longitude;
    if (nearbyStoreAddress != null && nearbyStoreAddress!.isNotEmpty) json['nearbyStoreAddress'] = nearbyStoreAddress;

    return json;
  }

}
