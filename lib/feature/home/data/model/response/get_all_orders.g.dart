// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllOrderResponse _$GetAllOrderResponseFromJson(Map<String, dynamic> json) =>
    GetAllOrderResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetAllOrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllOrderResponseToJson(
        GetAllOrderResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

GetAllOrderData _$GetAllOrderDataFromJson(Map<String, dynamic> json) =>
    GetAllOrderData(
      sId: json['sId'] as String?,
      user: json['user'] == null
          ? null
          : GetUserOrderData.fromJson(json['user'] as Map<String, dynamic>),
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartOrderItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingAddress: json['shippingAddress'] == null
          ? null
          : ShippingAddressOrder.fromJson(
              json['shippingAddress'] as Map<String, dynamic>),
      totalOrderPrice: (json['totalOrderPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GetAllOrderDataToJson(GetAllOrderData instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'user': instance.user,
      'cartItems': instance.cartItems,
      'shippingAddress': instance.shippingAddress,
      'totalOrderPrice': instance.totalOrderPrice,
    };

GetUserOrderData _$GetUserOrderDataFromJson(Map<String, dynamic> json) =>
    GetUserOrderData(
      sId: json['sId'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$GetUserOrderDataToJson(GetUserOrderData instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'email': instance.email,
      'phone': instance.phone,
    };

CartOrderItems _$CartOrderItemsFromJson(Map<String, dynamic> json) =>
    CartOrderItems(
      product: json['product'] == null
          ? null
          : ProductOrder.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartOrderItemsToJson(CartOrderItems instance) =>
    <String, dynamic>{
      'product': instance.product,
    };

ProductOrder _$ProductOrderFromJson(Map<String, dynamic> json) => ProductOrder(
      sId: json['sId'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ProductOrderToJson(ProductOrder instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'image': instance.image,
      'title': instance.title,
    };

ShippingAddressOrder _$ShippingAddressOrderFromJson(
        Map<String, dynamic> json) =>
    ShippingAddressOrder(
      sId: json['sId'] as String?,
      alias: json['alias'] as String?,
      buildingName: json['buildingName'] as String?,
      apartmentNumber: json['apartmentNumber'] as String?,
      additionalDirections: json['additionalDirections'] as String?,
      streetName: json['streetName'] as String?,
      phone: json['phone'] as String?,
      location: json['location'] == null
          ? null
          : LocationOrder.fromJson(json['location'] as Map<String, dynamic>),
      active: json['active'] as bool?,
      user: json['user'] as String?,
      nearbyStoreAddress: json['nearbyStoreAddress'] as String?,
      region: json['region'] as String?,
    );

Map<String, dynamic> _$ShippingAddressOrderToJson(
        ShippingAddressOrder instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'alias': instance.alias,
      'buildingName': instance.buildingName,
      'apartmentNumber': instance.apartmentNumber,
      'additionalDirections': instance.additionalDirections,
      'streetName': instance.streetName,
      'phone': instance.phone,
      'location': instance.location,
      'active': instance.active,
      'user': instance.user,
      'nearbyStoreAddress': instance.nearbyStoreAddress,
      'region': instance.region,
    };

LocationOrder _$LocationOrderFromJson(Map<String, dynamic> json) =>
    LocationOrder(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$LocationOrderToJson(LocationOrder instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
