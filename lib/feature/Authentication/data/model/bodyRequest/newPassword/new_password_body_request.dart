import 'package:json_annotation/json_annotation.dart';
part 'new_password_body_request.g.dart';

@JsonSerializable()
class NewPasswordRequestBody {
  NewPasswordRequestBody({
    required this.email,
    required this.newPassword,
    required this.passwordConfirm,
  });

  final String email;

  final String newPassword;
  final String passwordConfirm;


  //from json
  factory NewPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$NewPasswordRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$NewPasswordRequestBodyToJson(this);
}
