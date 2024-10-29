import 'package:json_annotation/json_annotation.dart';

part 'get_all_regions.g.dart';

@JsonSerializable()
class GetAllRegionsRsponse {
  bool? status;
  String? message;
  List<GetAllRegionsData>? data;

  GetAllRegionsRsponse({this.status, this.message, this.data});

    //from json
  factory GetAllRegionsRsponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllRegionsRsponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetAllRegionsRsponseToJson(this);
}

@JsonSerializable()
class GetAllRegionsData {
  String? branchArea;

  GetAllRegionsData({this.branchArea});

    //from json
  factory GetAllRegionsData.fromJson(Map<String, dynamic> json) =>
      _$GetAllRegionsDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetAllRegionsDataToJson(this);
}
