import 'package:json_annotation/json_annotation.dart';
part 'create_order.g.dart';

@JsonSerializable()
class CreateOrderResponse {
  bool? status;
  String? message;
  CreateOrderResponseData? data;

  CreateOrderResponse({this.status, this.message, this.data});

  //from json
  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$CreateOrderResponseToJson(this);
}

@JsonSerializable()
class CreateOrderResponseData {
  @JsonKey(name: "_id")
  String? sId;
  UserOrderData? user;
  String? notes;
  int? status;
  List<CartOrderItems>? cartItems;
  double? taxPrice;
  double? shippingPrice;
  OrderShippingAddress? shippingAddress;
  double? totalOrderPrice;
  String? paymentMethodType;
  String? createdAt;
  String? updatedAt;
  bool? isPaid;

  CreateOrderResponseData(
      {this.sId,
      this.user,
      this.notes,
      this.status,
      this.cartItems,
      this.taxPrice,
      this.shippingPrice,
      this.shippingAddress,
      this.totalOrderPrice,
      this.paymentMethodType,
      this.isPaid,
      this.createdAt,
      this.updatedAt});

  //from json
  factory CreateOrderResponseData.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$CreateOrderResponseDataToJson(this);
}

@JsonSerializable()
class UserOrderData {
  @JsonKey(name: "_id")
  String? sId;
  String? name;
  String? email;
  String? phone;

  UserOrderData({this.sId, this.name, this.email, this.phone});
  //from json
  factory UserOrderData.fromJson(Map<String, dynamic> json) =>
      _$UserOrderDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$UserOrderDataToJson(this);
}

@JsonSerializable()
class CartOrderItems {
  ProductOrder? product;
  int? quantity;
  int? price;
  int? totalItemPrice;
  String? sId;

  CartOrderItems(
      {this.product, this.quantity, this.price, this.totalItemPrice, this.sId});

  //from json
  factory CartOrderItems.fromJson(Map<String, dynamic> json) =>
      _$CartOrderItemsFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$CartOrderItemsToJson(this);
}

@JsonSerializable()
class ProductOrder {
  String? title;
  String? sId;
  String? image;
  double? ratingsAverage;

  ProductOrder({this.title, this.sId, this.image});

  //from json
  factory ProductOrder.fromJson(Map<String, dynamic> json) =>
      _$ProductOrderFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$ProductOrderToJson(this);
}

@JsonSerializable()
class OrderShippingAddress {
  OrderLocation? location;
  String? sId;
  String? alias;
  String? buildingName;
  String? apartmentNumber;
  String? floor;
  String? region;
  String? streetName;
  String? phone;
  String? user;

  OrderShippingAddress({
    this.location,
    this.sId,
    this.alias,
    this.buildingName,
    this.apartmentNumber,
    this.floor,
    this.region,
    this.streetName,
    this.phone,
    this.user,
  });

  //from json
  factory OrderShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$OrderShippingAddressFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$OrderShippingAddressToJson(this);
}

@JsonSerializable()
class OrderLocation {
  String? type;
  List<double>? coordinates;

  OrderLocation({this.type, this.coordinates});

  //from json
  factory OrderLocation.fromJson(Map<String, dynamic> json) =>
      _$OrderLocationFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$OrderLocationToJson(this);
}
