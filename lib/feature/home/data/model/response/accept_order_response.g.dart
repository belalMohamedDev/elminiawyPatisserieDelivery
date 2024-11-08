// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderAcceptResponse _$OrderAcceptResponseFromJson(Map<String, dynamic> json) =>
    OrderAcceptResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderAcceptData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderAcceptResponseToJson(
        OrderAcceptResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

OrderAcceptData _$OrderAcceptDataFromJson(Map<String, dynamic> json) =>
    OrderAcceptData(
      sId: json['sId'] as String?,
      user: json['user'] == null
          ? null
          : OrderAcceptUserData.fromJson(json['user'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
      status: (json['status'] as num?)?.toInt(),
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItemsAcceptOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxPrice: (json['taxPrice'] as num?)?.toDouble(),
      shippingPrice: (json['shippingPrice'] as num?)?.toInt(),
      shippingAddress: json['shippingAddress'] == null
          ? null
          : ShippingAddressAcceptOrder.fromJson(
              json['shippingAddress'] as Map<String, dynamic>),
      nearbyStoreAddress: json['nearbyStoreAddress'] as String?,
      totalOrderPrice: (json['totalOrderPrice'] as num?)?.toDouble(),
      paymentMethodType: json['paymentMethodType'] as String?,
      isPaid: json['isPaid'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      adminCompletedAt: json['adminCompletedAt'] as String?,
      driverId: json['driverId'] as String?,
    );

Map<String, dynamic> _$OrderAcceptDataToJson(OrderAcceptData instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'user': instance.user,
      'notes': instance.notes,
      'status': instance.status,
      'cartItems': instance.cartItems,
      'taxPrice': instance.taxPrice,
      'shippingPrice': instance.shippingPrice,
      'shippingAddress': instance.shippingAddress,
      'nearbyStoreAddress': instance.nearbyStoreAddress,
      'totalOrderPrice': instance.totalOrderPrice,
      'paymentMethodType': instance.paymentMethodType,
      'isPaid': instance.isPaid,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'adminCompletedAt': instance.adminCompletedAt,
      'driverId': instance.driverId,
    };

OrderAcceptUserData _$OrderAcceptUserDataFromJson(Map<String, dynamic> json) =>
    OrderAcceptUserData(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$OrderAcceptUserDataToJson(
        OrderAcceptUserData instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };

CartItemsAcceptOrder _$CartItemsAcceptOrderFromJson(
        Map<String, dynamic> json) =>
    CartItemsAcceptOrder(
      product: json['product'] == null
          ? null
          : AcceptOrderProduct.fromJson(
              json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      totalItemPrice: (json['totalItemPrice'] as num?)?.toInt(),
      sId: json['sId'] as String?,
    );

Map<String, dynamic> _$CartItemsAcceptOrderToJson(
        CartItemsAcceptOrder instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
      'price': instance.price,
      'totalItemPrice': instance.totalItemPrice,
      'sId': instance.sId,
    };

AcceptOrderProduct _$AcceptOrderProductFromJson(Map<String, dynamic> json) =>
    AcceptOrderProduct(
      title: json['title'] as String?,
      ratingsAverage: (json['ratingsAverage'] as num?)?.toInt(),
      sId: json['sId'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$AcceptOrderProductToJson(AcceptOrderProduct instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ratingsAverage': instance.ratingsAverage,
      'sId': instance.sId,
      'image': instance.image,
    };

ShippingAddressAcceptOrder _$ShippingAddressAcceptOrderFromJson(
        Map<String, dynamic> json) =>
    ShippingAddressAcceptOrder(
      location: json['location'] == null
          ? null
          : ShippingAddressAcceptOrderLocation.fromJson(
              json['location'] as Map<String, dynamic>),
      region: json['region'] as String?,
      sId: json['sId'] as String?,
      alias: json['alias'] as String?,
      buildingName: json['buildingName'] as String?,
      apartmentNumber: json['apartmentNumber'] as String?,
      floor: json['floor'] as String?,
      streetName: json['streetName'] as String?,
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
      user: json['user'] as String?,
      nearbyStoreAddress: json['nearbyStoreAddress'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ShippingAddressAcceptOrderToJson(
        ShippingAddressAcceptOrder instance) =>
    <String, dynamic>{
      'location': instance.location,
      'region': instance.region,
      'sId': instance.sId,
      'alias': instance.alias,
      'buildingName': instance.buildingName,
      'apartmentNumber': instance.apartmentNumber,
      'floor': instance.floor,
      'streetName': instance.streetName,
      'phone': instance.phone,
      'active': instance.active,
      'user': instance.user,
      'nearbyStoreAddress': instance.nearbyStoreAddress,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

ShippingAddressAcceptOrderLocation _$ShippingAddressAcceptOrderLocationFromJson(
        Map<String, dynamic> json) =>
    ShippingAddressAcceptOrderLocation(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$ShippingAddressAcceptOrderLocationToJson(
        ShippingAddressAcceptOrderLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
