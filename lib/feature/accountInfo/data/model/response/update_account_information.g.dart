// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_account_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAccountInformationResponse _$UpdateAccountInformationResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateAccountInformationResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataUpdateAccountInformationResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateAccountInformationResponseToJson(
        UpdateAccountInformationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

DataUpdateAccountInformationResponse
    _$DataUpdateAccountInformationResponseFromJson(Map<String, dynamic> json) =>
        DataUpdateAccountInformationResponse(
          sId: json['sId'] as String?,
          name: json['name'] as String?,
          email: json['email'] as String?,
          phone: json['phone'] as String?,
        );

Map<String, dynamic> _$DataUpdateAccountInformationResponseToJson(
        DataUpdateAccountInformationResponse instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };
