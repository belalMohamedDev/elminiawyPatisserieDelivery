import 'package:json_annotation/json_annotation.dart';
part 'get_all_orders.g.dart';

@JsonSerializable()
class GetAllOrderResponse {
  bool? status;
  String? message;
  List<GetAllOrderData>? data;

  GetAllOrderResponse({this.status, this.message, this.data});

  //from json
  factory GetAllOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllOrderResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetAllOrderResponseToJson(this);
}

@JsonSerializable()
class GetAllOrderData {
  @JsonKey(name: "_id")
  String? sId;
  GetUserOrderData? user;
  List<CartOrderItems>? cartItems;
  ShippingAddressOrder? shippingAddress;
  double? totalOrderPrice;
  String? paymentMethodType;
  bool? isPaid;

  String? distance;
  String? duration;

  GetAllOrderData(
      {this.sId,
      this.isPaid,
      this.paymentMethodType,
      this.user,
      this.cartItems,
      this.shippingAddress,
      this.totalOrderPrice,
      this.distance,
      this.duration});

  //from json
  factory GetAllOrderData.fromJson(Map<String, dynamic> json) =>
      _$GetAllOrderDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetAllOrderDataToJson(this);
}

@JsonSerializable()
class GetUserOrderData {
  String? sId;
  String? name;
  String? email;
  String? phone;

  GetUserOrderData({this.sId, this.email, this.phone, this.name});

  //from json
  factory GetUserOrderData.fromJson(Map<String, dynamic> json) =>
      _$GetUserOrderDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetUserOrderDataToJson(this);
}

@JsonSerializable()
class CartOrderItems {
  ProductOrder? product;

  CartOrderItems({this.product});

  //from json
  factory CartOrderItems.fromJson(Map<String, dynamic> json) =>
      _$CartOrderItemsFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$CartOrderItemsToJson(this);
}

@JsonSerializable()
class ProductOrder {
  String? sId;
  String? image;
  String? title;

  ProductOrder({this.sId, this.image, this.title});

  //from json
  factory ProductOrder.fromJson(Map<String, dynamic> json) =>
      _$ProductOrderFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$ProductOrderToJson(this);
}

@JsonSerializable()
class ShippingAddressOrder {
  String? sId;
  String? alias;
  String? buildingName;
  String? apartmentNumber;
  String? additionalDirections;
  String? streetName;
  String? phone;
  LocationOrder? location;
  bool? active;
  String? user;
  String? nearbyStoreAddress;
  String? region;

  ShippingAddressOrder({
    this.sId,
    this.alias,
    this.buildingName,
    this.apartmentNumber,
    this.additionalDirections,
    this.streetName,
    this.phone,
    this.location,
    this.active,
    this.user,
    this.nearbyStoreAddress,
    this.region,
  });

  //from json
  factory ShippingAddressOrder.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressOrderFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$ShippingAddressOrderToJson(this);
}

@JsonSerializable()
class LocationOrder {
  String? type;
  List<double>? coordinates;

  LocationOrder({this.type, this.coordinates});

  //from json
  factory LocationOrder.fromJson(Map<String, dynamic> json) =>
      _$LocationOrderFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$LocationOrderToJson(this);
}
