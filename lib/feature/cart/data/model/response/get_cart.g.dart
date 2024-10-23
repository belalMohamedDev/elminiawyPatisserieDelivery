// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartResponse _$CartResponseFromJson(Map<String, dynamic> json) => CartResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      numOfCartItems: (json['numOfCartItems'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : GetCartDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartResponseToJson(CartResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'numOfCartItems': instance.numOfCartItems,
      'data': instance.data,
    };

GetCartDataResponse _$GetCartDataResponseFromJson(Map<String, dynamic> json) =>
    GetCartDataResponse(
      sId: json['sId'] as String?,
      user: json['user'] == null
          ? null
          : GetUserCart.fromJson(json['user'] as Map<String, dynamic>),
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => GetCartItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCartPrice: (json['totalCartPrice'] as num?)?.toDouble(),
      shippingPrice: (json['shippingPrice'] as num?)?.toDouble(),
      taxPrice: (json['taxPrice'] as num?)?.toDouble(),
      totalOrderPrice: (json['totalOrderPrice'] as num?)?.toDouble(),
      totalPriceAfterDiscount:
          (json['totalPriceAfterDiscount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GetCartDataResponseToJson(
        GetCartDataResponse instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'user': instance.user,
      'cartItems': instance.cartItems,
      'totalCartPrice': instance.totalCartPrice,
      'shippingPrice': instance.shippingPrice,
      'taxPrice': instance.taxPrice,
      'totalOrderPrice': instance.totalOrderPrice,
      'totalPriceAfterDiscount': instance.totalPriceAfterDiscount,
    };

GetUserCart _$GetUserCartFromJson(Map<String, dynamic> json) => GetUserCart(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$GetUserCartToJson(GetUserCart instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };

GetCartItems _$GetCartItemsFromJson(Map<String, dynamic> json) => GetCartItems(
      product: json['product'] == null
          ? null
          : GetCartProduct.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      sId: json['_id'] as String?,
      totalItemPrice: (json['totalItemPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GetCartItemsToJson(GetCartItems instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
      'price': instance.price,
      '_id': instance.sId,
      'totalItemPrice': instance.totalItemPrice,
    };

GetCartProduct _$GetCartProductFromJson(Map<String, dynamic> json) =>
    GetCartProduct(
      title: json['title'] as String?,
      sId: json['sId'] as String?,
      image: json['image'] as String?,
    )..ratingsAverage = (json['ratingsAverage'] as num?)?.toDouble();

Map<String, dynamic> _$GetCartProductToJson(GetCartProduct instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sId': instance.sId,
      'image': instance.image,
      'ratingsAverage': instance.ratingsAverage,
    };
