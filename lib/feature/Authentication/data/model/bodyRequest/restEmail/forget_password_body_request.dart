import 'package:json_annotation/json_annotation.dart';
part 'forget_password_body_request.g.dart';

@JsonSerializable()
class ForgetPasswordRequestBody {
  ForgetPasswordRequestBody({
    required this.email,
 
  });

  final String email;



  //from json
  factory ForgetPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$ForgetPasswordRequestBodyToJson(this);
}
