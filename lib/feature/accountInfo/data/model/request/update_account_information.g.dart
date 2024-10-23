// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_account_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAccountInformationRequestBody
    _$UpdateAccountInformationRequestBodyFromJson(Map<String, dynamic> json) =>
        UpdateAccountInformationRequestBody(
          name: json['name'] as String,
          phone: json['phone'] as String,
        );

Map<String, dynamic> _$UpdateAccountInformationRequestBodyToJson(
        UpdateAccountInformationRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
    };
