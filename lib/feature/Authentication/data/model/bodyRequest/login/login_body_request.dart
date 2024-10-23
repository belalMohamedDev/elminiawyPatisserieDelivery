import 'package:json_annotation/json_annotation.dart';
part 'login_body_request.g.dart';

@JsonSerializable()
class LoginRequestBody {
  LoginRequestBody({
    required this.email,
    required this.password,
  });

  final String email;

  final String password;


  //from json
  factory LoginRequestBody.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
