import 'package:json_annotation/json_annotation.dart';
part 'create_order_request.g.dart';

@JsonSerializable()
class CreateOrderRequestBody {
  CreateOrderRequestBody({
    required this.shippingAddress,
    required this.nearbyStoreAddress,
    required this.notes,
  });

  final String shippingAddress;
  final String nearbyStoreAddress;
  final String notes;

  //from json
  factory CreateOrderRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$CreateOrderRequestBodyToJson(this);
}
