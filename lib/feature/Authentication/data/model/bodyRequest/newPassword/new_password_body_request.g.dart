// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_password_body_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewPasswordRequestBody _$NewPasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    NewPasswordRequestBody(
      email: json['email'] as String,
      newPassword: json['newPassword'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
    );

Map<String, dynamic> _$NewPasswordRequestBodyToJson(
        NewPasswordRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'newPassword': instance.newPassword,
      'passwordConfirm': instance.passwordConfirm,
    };
