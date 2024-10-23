// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAddressResponse _$CreateAddressResponseFromJson(
        Map<String, dynamic> json) =>
    CreateAddressResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CreateAddressData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateAddressResponseToJson(
        CreateAddressResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

CreateAddressData _$CreateAddressDataFromJson(Map<String, dynamic> json) =>
    CreateAddressData(
      alias: json['alias'] as String?,
      buildingName: json['buildingName'] as String?,
      apartmentNumber: json['apartmentNumber'] as String?,
      floor: json['floor'] as String?,
      region: json['region'] as String?,
      additionalDirections: json['additionalDirections'] as String?,
      streetName: json['streetName'] as String?,
      phone: json['phone'] as String?,
      addressLabel: json['addressLabel'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      user: json['user'] as String?,
      nearbyStoreAddress: json['nearbyStoreAddress'] as String?,
      sId: json['_id'] as String?,
    );

Map<String, dynamic> _$CreateAddressDataToJson(CreateAddressData instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'buildingName': instance.buildingName,
      'apartmentNumber': instance.apartmentNumber,
      'floor': instance.floor,
      'region': instance.region,
      'additionalDirections': instance.additionalDirections,
      'streetName': instance.streetName,
      'phone': instance.phone,
      'addressLabel': instance.addressLabel,
      'location': instance.location,
      'user': instance.user,
      'nearbyStoreAddress': instance.nearbyStoreAddress,
      '_id': instance.sId,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
