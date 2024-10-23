import 'package:json_annotation/json_annotation.dart';
part 'get_order.g.dart';

@JsonSerializable()
class GetOrdersResponse {
  bool? status;
  String? message;
  PaginationRuslt? paginationRuslt;
  List<GetOrdersResponseData>? data;

  GetOrdersResponse(
      {this.status, this.message, this.paginationRuslt, this.data});

  //from json
  factory GetOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetOrdersResponseToJson(this);
}

@JsonSerializable()
class PaginationRuslt {
  int? currentPage;
  int? limit;
  int? skip;
  int? numberOfPages;
  int? next;

  PaginationRuslt(
      {this.currentPage, this.limit, this.skip, this.numberOfPages, this.next});

  //from json
  factory PaginationRuslt.fromJson(Map<String, dynamic> json) =>
      _$PaginationRusltFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$PaginationRusltToJson(this);
}

@JsonSerializable()
class GetOrdersResponseData {
  @JsonKey(name: "_id")
  String? sId;
  GetOrdersUser? user;
  String? notes;
  int? status;
  List<OrdersCartItems>? cartItems;
  double? taxPrice;
  double? shippingPrice;
  OrdersShippingAddress? shippingAddress;
  double? totalOrderPrice;
  String? paymentMethodType;
  bool? isPaid;
  String? createdAt;
  String? updatedAt;

  GetOrdersResponseData(
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
  factory GetOrdersResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersResponseDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetOrdersResponseDataToJson(this);
}

@JsonSerializable()
class GetOrdersUser {
  String? sId;
  String? name;
  String? email;
  String? phone;

  GetOrdersUser({this.sId, this.name, this.email, this.phone});
  //from json
  factory GetOrdersUser.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersUserFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetOrdersUserToJson(this);
}

@JsonSerializable()
class OrdersCartItems {
  OrdersProduct? product;
  int? quantity;
  double? price;
  double? totalItemPrice;
  String? sId;

  OrdersCartItems(
      {this.product, this.quantity, this.price, this.totalItemPrice, this.sId});

  //from json
  factory OrdersCartItems.fromJson(Map<String, dynamic> json) =>
      _$OrdersCartItemsFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$OrdersCartItemsToJson(this);
}

@JsonSerializable()
class OrdersProduct {
  String? title;
  double? ratingsAverage;
  String? sId;
  String? image;

  OrdersProduct({this.title, this.ratingsAverage, this.sId, this.image});

  //from json
  factory OrdersProduct.fromJson(Map<String, dynamic> json) =>
      _$OrdersProductFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$OrdersProductToJson(this);
}

@JsonSerializable()
class OrdersShippingAddress {
  OrdersLocation? location;
  String? sId;
  String? alias;
  String? buildingName;
  String? apartmentNumber;
  String? floor;
  String? region;
  String? streetName;
  String? phone;
  String? user;
  String? createdAt;
  String? updatedAt;

  OrdersShippingAddress({
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
    this.createdAt,
    this.updatedAt,
  });

  //from json
  factory OrdersShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$OrdersShippingAddressFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$OrdersShippingAddressToJson(this);
}

@JsonSerializable()
class OrdersLocation {
  String? type;
  List<double>? coordinates;

  OrdersLocation({this.type, this.coordinates});

  //from json
  factory OrdersLocation.fromJson(Map<String, dynamic> json) =>
      _$OrdersLocationFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$OrdersLocationToJson(this);
}
