import '../../../../../../core/common/shared/shared_imports.dart';

part 'complete_register_body.g.dart';

@JsonSerializable()
class CompleteRegisterRequestBody {
  CompleteRegisterRequestBody({
    this.nationalId,
    this.typeOfTheVehicle,
    this.deliveryType,
    this.region,
  });
  final String? nationalId;

  final String? typeOfTheVehicle;

  final String? deliveryType;

  final String? region;

  //from json
  factory CompleteRegisterRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CompleteRegisterRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$CompleteRegisterRequestBodyToJson(this);
}
