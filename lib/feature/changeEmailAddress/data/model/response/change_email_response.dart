import 'package:json_annotation/json_annotation.dart';
part 'change_email_response.g.dart';

@JsonSerializable()
class UpdateEmailAddressResponse {
  bool? status;
  String? message;
  String? accessToken;
  UpdateEmailAddressData? data;

  UpdateEmailAddressResponse(
      {this.status, this.message, this.accessToken, this.data});

  //from json
  factory UpdateEmailAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmailAddressResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$UpdateEmailAddressResponseToJson(this);
}


@JsonSerializable()
class UpdateEmailAddressData {
  String? sId;
  String? name;
  String? email;
  String? phone;
  String? refreshToken;

  UpdateEmailAddressData({this.sId, this.name, this.email, this.phone, this.refreshToken});

  //from json
  factory UpdateEmailAddressData.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmailAddressDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$UpdateEmailAddressDataToJson(this);
}
