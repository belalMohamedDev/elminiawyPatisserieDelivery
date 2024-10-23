// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_email_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateEmailAddressResponse _$UpdateEmailAddressResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateEmailAddressResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      accessToken: json['accessToken'] as String?,
      data: json['data'] == null
          ? null
          : UpdateEmailAddressData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateEmailAddressResponseToJson(
        UpdateEmailAddressResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'accessToken': instance.accessToken,
      'data': instance.data,
    };

UpdateEmailAddressData _$UpdateEmailAddressDataFromJson(
        Map<String, dynamic> json) =>
    UpdateEmailAddressData(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$UpdateEmailAddressDataToJson(
        UpdateEmailAddressData instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'refreshToken': instance.refreshToken,
    };
