// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAddressRequestBody _$CreateAddressRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CreateAddressRequestBody(
      alias: json['alias'] as String?,
      buildingName: json['buildingName'] as String?,
      apartmentNumber: json['apartmentNumber'] as String?,
      floor: json['floor'] as String?,
      region: (json['region'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      additionalDirections: json['additionalDirections'] as String?,
      streetName: json['streetName'] as String?,
      phone: json['phone'] as String?,
      addressLabel: json['addressLabel'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      nearbyStoreAddress: json['nearbyStoreAddress'] as String?,
    );

Map<String, dynamic> _$CreateAddressRequestBodyToJson(
        CreateAddressRequestBody instance) =>
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
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'nearbyStoreAddress': instance.nearbyStoreAddress,
    };
