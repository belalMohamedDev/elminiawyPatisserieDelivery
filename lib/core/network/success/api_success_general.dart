import '../../../../../core/common/shared/shared_imports.dart'; //

part 'api_success_general.g.dart';


@JsonSerializable()
class ApiSuccessGeneralModel {
  ApiSuccessGeneralModel({
    required this.message,
    this.status,
  });

  factory ApiSuccessGeneralModel.fromJson(Map<String, dynamic> json) =>
      _$ApiSuccessGeneralModelFromJson(json);
  final String? message;
  final bool? status;

  Map<String, dynamic> toJson() => _$ApiSuccessGeneralModelToJson(this);
}
