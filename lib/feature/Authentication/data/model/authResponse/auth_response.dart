import 'package:json_annotation/json_annotation.dart';
part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  bool? status;
  String? message;
  String? accessToken;
  DataAuthResponse? data;

  AuthResponse({this.status, this.message, this.accessToken, this.data});

  //from json
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}

@JsonSerializable()
class DataAuthResponse {
  @JsonKey(name: "_id")
  String? sId;
  String? name;
  String? email;
  String? phone;
  String? refreshToken;
  String? role;

  DataAuthResponse(
      {this.sId, this.name, this.email, this.phone, this.refreshToken,this.role});

  //from json
  factory DataAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$DataAuthResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$DataAuthResponseToJson(this);
}
