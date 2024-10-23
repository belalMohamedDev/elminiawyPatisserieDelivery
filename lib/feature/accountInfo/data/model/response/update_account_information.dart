import 'package:json_annotation/json_annotation.dart';
part 'update_account_information.g.dart';

@JsonSerializable()
class UpdateAccountInformationResponse {
  bool? status;
  String? message;
  DataUpdateAccountInformationResponse? data;

  UpdateAccountInformationResponse({this.status, this.message, this.data});

  
  //from json
  factory UpdateAccountInformationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateAccountInformationResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() =>
      _$UpdateAccountInformationResponseToJson(this);
}

@JsonSerializable()

class DataUpdateAccountInformationResponse {
  String? sId;
  String? name;
  String? email;
  String? phone;

  DataUpdateAccountInformationResponse({
    this.sId,
    this.name,
    this.email,
    this.phone,
  });

  
  //from json
  factory DataUpdateAccountInformationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DataUpdateAccountInformationResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() =>
      _$DataUpdateAccountInformationResponseToJson(this);
}
