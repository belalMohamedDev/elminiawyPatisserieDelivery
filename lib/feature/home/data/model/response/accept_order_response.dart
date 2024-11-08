import 'package:json_annotation/json_annotation.dart';
part 'accept_order_response.g.dart';

@JsonSerializable()

class OrderAcceptResponse {
  bool? status;
  String? message;
  OrderAcceptData? data;

  OrderAcceptResponse({this.status, this.message, this.data});



  factory OrderAcceptResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderAcceptResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderAcceptResponseToJson(this);



}


@JsonSerializable()
class OrderAcceptData {
  String? sId;
  OrderAcceptUserData? user;
  String? notes;
  int? status;
  List<CartItemsAcceptOrder>? cartItems;
  double? taxPrice;
  int? shippingPrice;
  ShippingAddressAcceptOrder? shippingAddress;
  String? nearbyStoreAddress;
  double? totalOrderPrice;
  String? paymentMethodType;

  bool? isPaid;
  String? createdAt;
  String? updatedAt;

  String? adminCompletedAt;
  String? driverId;

  OrderAcceptData(
      {this.sId,
      this.user,
      this.notes,
      this.status,
      this.cartItems,
      this.taxPrice,
      this.shippingPrice,
      this.shippingAddress,
      this.nearbyStoreAddress,
      this.totalOrderPrice,
      this.paymentMethodType,

      this.isPaid,
      this.createdAt,
      this.updatedAt,
 
      this.adminCompletedAt,
      this.driverId});


  factory OrderAcceptData.fromJson(Map<String, dynamic> json) =>
      _$OrderAcceptDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrderAcceptDataToJson(this);

}

@JsonSerializable()
class OrderAcceptUserData {
  String? sId;
  String? name;
  String? email;
  String? phone;

  OrderAcceptUserData({this.sId, this.name, this.email, this.phone});


  factory OrderAcceptUserData.fromJson(Map<String, dynamic> json) =>
      _$OrderAcceptUserDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrderAcceptUserDataToJson(this);
}


@JsonSerializable()
class CartItemsAcceptOrder {
  AcceptOrderProduct? product;
  int? quantity;
  int? price;
  int? totalItemPrice;
  String? sId;

  CartItemsAcceptOrder(
      {this.product, this.quantity, this.price, this.totalItemPrice, this.sId});


  factory CartItemsAcceptOrder.fromJson(Map<String, dynamic> json) =>
      _$CartItemsAcceptOrderFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemsAcceptOrderToJson(this);
}


@JsonSerializable()
class AcceptOrderProduct {
  String? title;
  int? ratingsAverage;
  String? sId;
  String? image;

  AcceptOrderProduct({this.title, this.ratingsAverage, this.sId, this.image});

  factory AcceptOrderProduct.fromJson(Map<String, dynamic> json) =>
      _$AcceptOrderProductFromJson(json);

  Map<String, dynamic> toJson() => _$AcceptOrderProductToJson(this);

}




@JsonSerializable()
class ShippingAddressAcceptOrder {
  ShippingAddressAcceptOrderLocation? location;
  String? region;
  String? sId;
  String? alias;
  String? buildingName;
  String? apartmentNumber;
  String? floor;
  String? streetName;
  String? phone;
  bool? active;
  String? user;
  String? nearbyStoreAddress;
  String? createdAt;
  String? updatedAt;


  ShippingAddressAcceptOrder(
      {this.location,
      this.region,
      this.sId,
      this.alias,
      this.buildingName,
      this.apartmentNumber,
      this.floor,
      this.streetName,
      this.phone,
      this.active,
      this.user,
      this.nearbyStoreAddress,
      this.createdAt,
      this.updatedAt,
 });

  factory ShippingAddressAcceptOrder.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressAcceptOrderFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingAddressAcceptOrderToJson(this);


}



@JsonSerializable()
class ShippingAddressAcceptOrderLocation {
  String? type;
  List<double>? coordinates;

  ShippingAddressAcceptOrderLocation({this.type, this.coordinates});

  factory ShippingAddressAcceptOrderLocation.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressAcceptOrderLocationFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingAddressAcceptOrderLocationToJson(this);

}
