// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_my_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeMyPasswordRequestBody _$ChangeMyPasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ChangeMyPasswordRequestBody(
      password: json['password'] as String,
      currentPassword: json['currentPassword'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
    );

Map<String, dynamic> _$ChangeMyPasswordRequestBodyToJson(
        ChangeMyPasswordRequestBody instance) =>
    <String, dynamic>{
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
      'currentPassword': instance.currentPassword,
    };
