// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_out_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogOutResponse _$LogOutResponseFromJson(Map<String, dynamic> json) =>
    LogOutResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$LogOutResponseToJson(LogOutResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
