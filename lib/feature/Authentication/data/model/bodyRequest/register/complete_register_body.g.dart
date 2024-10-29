// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_register_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompleteRegisterRequestBody _$CompleteRegisterRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CompleteRegisterRequestBody(
      nationalId: json['nationalId'] as String?,
      typeOfTheVehicle: json['typeOfTheVehicle'] as String?,
      deliveryType: json['deliveryType'] as String?,
      region: json['region'] as String?,
    );

Map<String, dynamic> _$CompleteRegisterRequestBodyToJson(
        CompleteRegisterRequestBody instance) =>
    <String, dynamic>{
      'nationalId': instance.nationalId,
      'typeOfTheVehicle': instance.typeOfTheVehicle,
      'deliveryType': instance.deliveryType,
      'region': instance.region,
    };
