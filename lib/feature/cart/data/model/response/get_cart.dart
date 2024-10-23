import 'package:json_annotation/json_annotation.dart';

part 'get_cart.g.dart';

@JsonSerializable()
class CartResponse {
  bool? status;
  String? message;
  int? numOfCartItems;
  GetCartDataResponse? data;

  CartResponse({this.status, this.message, this.numOfCartItems, this.data});
  //from json
  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$CartResponseToJson(this);
}

@JsonSerializable()
class GetCartDataResponse {
  String? sId;
  GetUserCart? user;
  List<GetCartItems>? cartItems;
  double? totalCartPrice;
  double? shippingPrice;
  double? taxPrice;
  double? totalOrderPrice;
  double? totalPriceAfterDiscount;

  GetCartDataResponse({
    this.sId,
    this.user,
    this.cartItems,
    this.totalCartPrice,
    this.shippingPrice,
    this.taxPrice,
    this.totalOrderPrice,
    this.totalPriceAfterDiscount,
  });

  //from json
  factory GetCartDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCartDataResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetCartDataResponseToJson(this);
}

@JsonSerializable()
class GetUserCart {
  String? sId;
  String? name;
  String? email;
  String? phone;

  GetUserCart({this.sId, this.name, this.email, this.phone});

  //from json
  factory GetUserCart.fromJson(Map<String, dynamic> json) =>
      _$GetUserCartFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetUserCartToJson(this);
}

@JsonSerializable()
class GetCartItems {
  GetCartProduct? product;
  int? quantity;
  double? price;
  @JsonKey(name: "_id")
  String? sId;
  double? totalItemPrice;

  GetCartItems({
    this.product,
    this.quantity,
    this.price,
    this.sId,
    this.totalItemPrice,
  });

  //from json
  factory GetCartItems.fromJson(Map<String, dynamic> json) =>
      _$GetCartItemsFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetCartItemsToJson(this);
}

@JsonSerializable()
class GetCartProduct {
  String? title;
  String? sId;
  String? image;
  double? ratingsAverage;

  GetCartProduct({this.title, this.sId, this.image});

  //from json
  factory GetCartProduct.fromJson(Map<String, dynamic> json) =>
      _$GetCartProductFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetCartProductToJson(this);
}
