import 'package:json_annotation/json_annotation.dart';

part 'check_address_available.g.dart';

@JsonSerializable()
class CheckAddressAvailableRequestBody {
  CheckAddressAvailableRequestBody({
    this.latitude,
    this.longitude,
  });

  final String? latitude;
  final String? longitude;

  factory CheckAddressAvailableRequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$CheckAddressAvailableRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CheckAddressAvailableRequestBodyToJson(this);
}
