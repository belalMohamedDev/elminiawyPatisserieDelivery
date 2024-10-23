import '../../../../../core/common/shared/shared_imports.dart'; //

part 'log_out_response.g.dart';

@JsonSerializable()
class LogOutResponse {
  bool? status;
  String? message;

  LogOutResponse({this.status, this.message});

  //from json
  factory LogOutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogOutResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$LogOutResponseToJson(this);
}
