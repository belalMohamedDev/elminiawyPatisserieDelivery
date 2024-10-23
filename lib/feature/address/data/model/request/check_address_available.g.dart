// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_address_available.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckAddressAvailableRequestBody _$CheckAddressAvailableRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CheckAddressAvailableRequestBody(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$CheckAddressAvailableRequestBodyToJson(
        CheckAddressAvailableRequestBody instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
