// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAddressResponse _$GetAddressResponseFromJson(Map<String, dynamic> json) =>
    GetAddressResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      paginationRuslt: json['paginationRuslt'] == null
          ? null
          : PaginationRuslt.fromJson(
              json['paginationRuslt'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => GetAddressResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAddressResponseToJson(GetAddressResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'paginationRuslt': instance.paginationRuslt,
      'data': instance.data,
    };

PaginationRuslt _$PaginationRusltFromJson(Map<String, dynamic> json) =>
    PaginationRuslt(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      skip: (json['skip'] as num?)?.toInt(),
      numberOfPages: (json['numberOfPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationRusltToJson(PaginationRuslt instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'limit': instance.limit,
      'skip': instance.skip,
      'numberOfPages': instance.numberOfPages,
    };

GetAddressResponseData _$GetAddressResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetAddressResponseData(
      location: json['location'] == null
          ? null
          : GetAddressResponseLocation.fromJson(
              json['location'] as Map<String, dynamic>),
      sId: json['_id'] as String?,
      alias: json['alias'] as String?,
      buildingName: json['buildingName'] as String?,
      apartmentNumber: json['apartmentNumber'] as String?,
      floor: json['floor'] as String?,
      region: json['region'] as String?,
      additionalDirections: json['additionalDirections'] as String?,
      streetName: json['streetName'] as String?,
      phone: json['phone'] as String?,
      addressLabel: json['addressLabel'] as String?,
      user: json['user'] as String?,
      nearbyStoreAddress: json['nearbyStoreAddress'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$GetAddressResponseDataToJson(
        GetAddressResponseData instance) =>
    <String, dynamic>{
      'location': instance.location,
      '_id': instance.sId,
      'alias': instance.alias,
      'buildingName': instance.buildingName,
      'apartmentNumber': instance.apartmentNumber,
      'floor': instance.floor,
      'region': instance.region,
      'additionalDirections': instance.additionalDirections,
      'streetName': instance.streetName,
      'phone': instance.phone,
      'addressLabel': instance.addressLabel,
      'user': instance.user,
      'nearbyStoreAddress': instance.nearbyStoreAddress,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

GetAddressResponseLocation _$GetAddressResponseLocationFromJson(
        Map<String, dynamic> json) =>
    GetAddressResponseLocation(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$GetAddressResponseLocationToJson(
        GetAddressResponseLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
