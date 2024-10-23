import 'package:json_annotation/json_annotation.dart';
part 'change_email_request.g.dart';

@JsonSerializable()
class ChangeEmailRequestBody {
  ChangeEmailRequestBody({
    required this.newEmail,
    required this.currentPassword,
  });

  final String newEmail;

  final String currentPassword;

  //from json
  factory ChangeEmailRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$ChangeEmailRequestBodyToJson(this);
}
