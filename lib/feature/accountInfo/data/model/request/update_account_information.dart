import 'package:json_annotation/json_annotation.dart';
part 'update_account_information.g.dart';

@JsonSerializable()
class UpdateAccountInformationRequestBody {
  UpdateAccountInformationRequestBody({
    required this.name,
    required this.phone,
  });

  final String name;

  final String phone;

  //from json
  factory UpdateAccountInformationRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateAccountInformationRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$UpdateAccountInformationRequestBodyToJson(this);
}
