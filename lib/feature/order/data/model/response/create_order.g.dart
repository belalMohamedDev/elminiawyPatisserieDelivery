// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) =>
    CreateOrderResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CreateOrderResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateOrderResponseToJson(
        CreateOrderResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

CreateOrderResponseData _$CreateOrderResponseDataFromJson(
        Map<String, dynamic> json) =>
    CreateOrderResponseData(
      sId: json['_id'] as String?,
      user: json['user'] == null
          ? null
          : UserOrderData.fromJson(json['user'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
      status: (json['status'] as num?)?.toInt(),
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartOrderItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxPrice: (json['taxPrice'] as num?)?.toDouble(),
      shippingPrice: (json['shippingPrice'] as num?)?.toDouble(),
      shippingAddress: json['shippingAddress'] == null
          ? null
          : OrderShippingAddress.fromJson(
              json['shippingAddress'] as Map<String, dynamic>),
      totalOrderPrice: (json['totalOrderPrice'] as num?)?.toDouble(),
      paymentMethodType: json['paymentMethodType'] as String?,
      isPaid: json['isPaid'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$CreateOrderResponseDataToJson(
        CreateOrderResponseData instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'user': instance.user,
      'notes': instance.notes,
      'status': instance.status,
      'cartItems': instance.cartItems,
      'taxPrice': instance.taxPrice,
      'shippingPrice': instance.shippingPrice,
      'shippingAddress': instance.shippingAddress,
      'totalOrderPrice': instance.totalOrderPrice,
      'paymentMethodType': instance.paymentMethodType,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isPaid': instance.isPaid,
    };

UserOrderData _$UserOrderDataFromJson(Map<String, dynamic> json) =>
    UserOrderData(
      sId: json['_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$UserOrderDataToJson(UserOrderData instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };

CartOrderItems _$CartOrderItemsFromJson(Map<String, dynamic> json) =>
    CartOrderItems(
      product: json['product'] == null
          ? null
          : ProductOrder.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      totalItemPrice: (json['totalItemPrice'] as num?)?.toInt(),
      sId: json['sId'] as String?,
    );

Map<String, dynamic> _$CartOrderItemsToJson(CartOrderItems instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
      'price': instance.price,
      'totalItemPrice': instance.totalItemPrice,
      'sId': instance.sId,
    };

ProductOrder _$ProductOrderFromJson(Map<String, dynamic> json) => ProductOrder(
      title: json['title'] as String?,
      sId: json['sId'] as String?,
      image: json['image'] as String?,
    )..ratingsAverage = (json['ratingsAverage'] as num?)?.toDouble();

Map<String, dynamic> _$ProductOrderToJson(ProductOrder instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sId': instance.sId,
      'image': instance.image,
      'ratingsAverage': instance.ratingsAverage,
    };

OrderShippingAddress _$OrderShippingAddressFromJson(
        Map<String, dynamic> json) =>
    OrderShippingAddress(
      location: json['location'] == null
          ? null
          : OrderLocation.fromJson(json['location'] as Map<String, dynamic>),
      sId: json['sId'] as String?,
      alias: json['alias'] as String?,
      buildingName: json['buildingName'] as String?,
      apartmentNumber: json['apartmentNumber'] as String?,
      floor: json['floor'] as String?,
      region: json['region'] as String?,
      streetName: json['streetName'] as String?,
      phone: json['phone'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$OrderShippingAddressToJson(
        OrderShippingAddress instance) =>
    <String, dynamic>{
      'location': instance.location,
      'sId': instance.sId,
      'alias': instance.alias,
      'buildingName': instance.buildingName,
      'apartmentNumber': instance.apartmentNumber,
      'floor': instance.floor,
      'region': instance.region,
      'streetName': instance.streetName,
      'phone': instance.phone,
      'user': instance.user,
    };

OrderLocation _$OrderLocationFromJson(Map<String, dynamic> json) =>
    OrderLocation(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$OrderLocationToJson(OrderLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
