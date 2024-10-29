// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_regions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllRegionsRsponse _$GetAllRegionsRsponseFromJson(
        Map<String, dynamic> json) =>
    GetAllRegionsRsponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetAllRegionsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllRegionsRsponseToJson(
        GetAllRegionsRsponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

GetAllRegionsData _$GetAllRegionsDataFromJson(Map<String, dynamic> json) =>
    GetAllRegionsData(
      branchArea: json['branchArea'] as String?,
    );

Map<String, dynamic> _$GetAllRegionsDataToJson(GetAllRegionsData instance) =>
    <String, dynamic>{
      'branchArea': instance.branchArea,
    };
