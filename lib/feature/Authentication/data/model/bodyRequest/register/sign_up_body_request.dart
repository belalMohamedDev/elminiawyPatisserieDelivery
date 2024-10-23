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

  Map<String, dynamic> toFilteredJson() {
    final json = <String, dynamic>{};

    if (name != null && name!.isNotEmpty) json['name'] = name;
    if (email != null && email!.isNotEmpty) json['email'] = email;
    if (password != null && password!.isNotEmpty) json['password'] = password;
    if (phone != null && phone!.isNotEmpty) json['phone'] = phone;

    return json;
  }
}
