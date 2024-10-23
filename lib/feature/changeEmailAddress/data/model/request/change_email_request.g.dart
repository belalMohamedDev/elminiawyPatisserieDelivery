// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_email_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeEmailRequestBody _$ChangeEmailRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ChangeEmailRequestBody(
      newEmail: json['newEmail'] as String,
      currentPassword: json['currentPassword'] as String,
    );

Map<String, dynamic> _$ChangeEmailRequestBodyToJson(
        ChangeEmailRequestBody instance) =>
    <String, dynamic>{
      'newEmail': instance.newEmail,
      'currentPassword': instance.currentPassword,
    };
