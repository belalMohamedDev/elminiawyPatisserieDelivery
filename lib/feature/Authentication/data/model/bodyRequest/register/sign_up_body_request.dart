import '../../../../../../core/common/shared/shared_imports.dart';

part 'sign_up_body_request.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  RegisterRequestBody({
    this.name,
    this.email,
    this.password,
    this.phone,
  });
  final String? name;

  final String? email;

  final String? password;

  final String? phone;

  //from json
  factory RegisterRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);


}
