import 'package:json_annotation/json_annotation.dart';
part 'add_item.g.dart';

@JsonSerializable()
class AddItemToCartRequestBody {
  AddItemToCartRequestBody({
    required this.product,
    required this.quantity,
  });

  final String product;

  final int quantity;

  //from json
  factory AddItemToCartRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AddItemToCartRequestBodyFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$AddItemToCartRequestBodyToJson(this);
}
