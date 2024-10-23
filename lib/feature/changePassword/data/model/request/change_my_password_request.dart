import 'package:json_annotation/json_annotation.dart';
part 'change_my_password_request.g.dart';

@JsonSerializable()
class ChangeMyPasswordRequestBody {
  ChangeMyPasswordRequestBody({
    required this.password,
    required this.currentPassword,
    required this.passwordConfirm,
  });

  final String password;
  final String passwordConfirm;

  final String currentPassword;

  //from json
  factory ChangeMyPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeMyPasswordRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$ChangeMyPasswordRequestBodyToJson(this);
}
