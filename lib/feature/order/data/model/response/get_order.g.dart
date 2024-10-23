// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrdersResponse _$GetOrdersResponseFromJson(Map<String, dynamic> json) =>
    GetOrdersResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      paginationRuslt: json['paginationRuslt'] == null
          ? null
          : PaginationRuslt.fromJson(
              json['paginationRuslt'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => GetOrdersResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetOrdersResponseToJson(GetOrdersResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'paginationRuslt': instance.paginationRuslt,
      'data': instance.data,
    };

PaginationRuslt _$PaginationRusltFromJson(Map<String, dynamic> json) =>
    PaginationRuslt(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      skip: (json['skip'] as num?)?.toInt(),
      numberOfPages: (json['numberOfPages'] as num?)?.toInt(),
      next: (json['next'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationRusltToJson(PaginationRuslt instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'limit': instance.limit,
      'skip': instance.skip,
      'numberOfPages': instance.numberOfPages,
      'next': instance.next,
    };

GetOrdersResponseData _$GetOrdersResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetOrdersResponseData(
      sId: json['_id'] as String?,
      user: json['user'] == null
          ? null
          : GetOrdersUser.fromJson(json['user'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
      status: (json['status'] as num?)?.toInt(),
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => OrdersCartItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxPrice: (json['taxPrice'] as num?)?.toDouble(),
      shippingPrice: (json['shippingPrice'] as num?)?.toDouble(),
      shippingAddress: json['shippingAddress'] == null
          ? null
          : OrdersShippingAddress.fromJson(
              json['shippingAddress'] as Map<String, dynamic>),
      totalOrderPrice: (json['totalOrderPrice'] as num?)?.toDouble(),
      paymentMethodType: json['paymentMethodType'] as String?,
      isPaid: json['isPaid'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$GetOrdersResponseDataToJson(
        GetOrdersResponseData instance) =>
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
      'isPaid': instance.isPaid,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

GetOrdersUser _$GetOrdersUserFromJson(Map<String, dynamic> json) =>
    GetOrdersUser(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$GetOrdersUserToJson(GetOrdersUser instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };

OrdersCartItems _$OrdersCartItemsFromJson(Map<String, dynamic> json) =>
    OrdersCartItems(
      product: json['product'] == null
          ? null
          : OrdersProduct.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      totalItemPrice: (json['totalItemPrice'] as num?)?.toDouble(),
      sId: json['sId'] as String?,
    );

Map<String, dynamic> _$OrdersCartItemsToJson(OrdersCartItems instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
      'price': instance.price,
      'totalItemPrice': instance.totalItemPrice,
      'sId': instance.sId,
    };

OrdersProduct _$OrdersProductFromJson(Map<String, dynamic> json) =>
    OrdersProduct(
      title: json['title'] as String?,
      ratingsAverage: (json['ratingsAverage'] as num?)?.toDouble(),
      sId: json['sId'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$OrdersProductToJson(OrdersProduct instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ratingsAverage': instance.ratingsAverage,
      'sId': instance.sId,
      'image': instance.image,
    };

OrdersShippingAddress _$OrdersShippingAddressFromJson(
        Map<String, dynamic> json) =>
    OrdersShippingAddress(
      location: json['location'] == null
          ? null
          : OrdersLocation.fromJson(json['location'] as Map<String, dynamic>),
      sId: json['sId'] as String?,
      alias: json['alias'] as String?,
      buildingName: json['buildingName'] as String?,
      apartmentNumber: json['apartmentNumber'] as String?,
      floor: json['floor'] as String?,
      region: json['region'] as String?,
      streetName: json['streetName'] as String?,
      phone: json['phone'] as String?,
      user: json['user'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$OrdersShippingAddressToJson(
        OrdersShippingAddress instance) =>
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

OrdersLocation _$OrdersLocationFromJson(Map<String, dynamic> json) =>
    OrdersLocation(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$OrdersLocationToJson(OrdersLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
