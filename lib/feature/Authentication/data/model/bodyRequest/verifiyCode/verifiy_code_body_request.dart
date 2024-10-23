import '../../../../../../core/common/shared/shared_imports.dart'; //
part 'verifiy_code_body_request.g.dart';

@JsonSerializable()
class VerifyCodeRequestBody {
  VerifyCodeRequestBody({
    required this.restCode,
 
  });

  final String restCode;



  //from json
  factory VerifyCodeRequestBody.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$VerifyCodeRequestBodyToJson(this);
}
