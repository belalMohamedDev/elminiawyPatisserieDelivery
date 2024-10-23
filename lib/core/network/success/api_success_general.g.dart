// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_success_general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiSuccessGeneralModel _$ApiSuccessGeneralModelFromJson(
        Map<String, dynamic> json) =>
    ApiSuccessGeneralModel(
      message: json['message'] as String?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$ApiSuccessGeneralModelToJson(
        ApiSuccessGeneralModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };
