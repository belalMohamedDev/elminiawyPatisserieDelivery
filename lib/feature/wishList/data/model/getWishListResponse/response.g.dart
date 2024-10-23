// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishListProduct _$WishListProductFromJson(Map<String, dynamic> json) =>
    WishListProduct(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WishListProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WishListProductToJson(WishListProduct instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

WishListProductData _$WishListProductDataFromJson(Map<String, dynamic> json) =>
    WishListProductData(
      title: json['title'] as String?,
      description: json['description'] as String?,
      inCart: json['in_cart'] as bool?,
      ratingsAverage: (json['ratingsAverage'] as num?)?.toDouble(),
      sId: json['_id'] as String?,
      price: (json['price'] as num?)?.toInt(),
      subCategory: json['subCategory'] as String?,
      image: json['image'] as String?,
      publicId: json['publicId'] as String?,
      ratingsQuantity: (json['ratingsQuantity'] as num?)?.toInt(),
      category: json['category'] as String?,
      inWishlist: json['in_wishlist'] as bool?,
    );

Map<String, dynamic> _$WishListProductDataToJson(
        WishListProductData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'in_cart': instance.inCart,
      'ratingsAverage': instance.ratingsAverage,
      '_id': instance.sId,
      'price': instance.price,
      'subCategory': instance.subCategory,
      'image': instance.image,
      'publicId': instance.publicId,
      'ratingsQuantity': instance.ratingsQuantity,
      'category': instance.category,
      'in_wishlist': instance.inWishlist,
    };
