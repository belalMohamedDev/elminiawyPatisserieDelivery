// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompleteRegisterResponse _$CompleteRegisterResponseFromJson(
        Map<String, dynamic> json) =>
    CompleteRegisterResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CompleteRegisterData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompleteRegisterResponseToJson(
        CompleteRegisterResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

CompleteRegisterData _$CompleteRegisterDataFromJson(
        Map<String, dynamic> json) =>
    CompleteRegisterData(
      region: json['region'] as String?,
      deliveryType: json['deliveryType'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      publicIds: (json['publicIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String?,
      typeOfTheVehicle: json['typeOfTheVehicle'] as String?,
      location: json['location'] == null
          ? null
          : CompleteRegisterLocation.fromJson(
              json['location'] as Map<String, dynamic>),
      nationalId: json['nationalId'] as String?,
      user: json['user'] as String?,
      sId: json['sId'] as String?,
    );

Map<String, dynamic> _$CompleteRegisterDataToJson(
        CompleteRegisterData instance) =>
    <String, dynamic>{
      'region': instance.region,
      'deliveryType': instance.deliveryType,
      'images': instance.images,
      'publicIds': instance.publicIds,
      'status': instance.status,
      'typeOfTheVehicle': instance.typeOfTheVehicle,
      'location': instance.location,
      'nationalId': instance.nationalId,
      'user': instance.user,
      'sId': instance.sId,
    };

CompleteRegisterLocation _$CompleteRegisterLocationFromJson(
        Map<String, dynamic> json) =>
    CompleteRegisterLocation(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$CompleteRegisterLocationToJson(
        CompleteRegisterLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
