// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductsBasedOnCategory _$GetProductsBasedOnCategoryFromJson(
        Map<String, dynamic> json) =>
    GetProductsBasedOnCategory(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      allProducts: (json['AllProducts'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => SubCategoryProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetProductsBasedOnCategoryToJson(
        GetProductsBasedOnCategory instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'AllProducts': instance.allProducts,
      'data': instance.data,
    };

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      title: json['title'] as String?,
      description: json['description'] as String?,
      ratingsAverage: (json['ratingsAverage'] as num?)?.toDouble(),
      sId: json['_id'] as String?,
      price: (json['price'] as num?)?.toInt(),
      subCategory: json['subCategory'] as String?,
      image: json['image'] as String?,
      publicId: json['publicId'] as String?,
      ratingsQuantity: (json['ratingsQuantity'] as num?)?.toInt(),
      category: json['category'] as String?,
    )
      ..inWishlist = json['in_wishlist'] as bool?
      ..inCart = json['in_cart'] as bool?;

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'ratingsAverage': instance.ratingsAverage,
      '_id': instance.sId,
      'price': instance.price,
      'subCategory': instance.subCategory,
      'image': instance.image,
      'publicId': instance.publicId,
      'ratingsQuantity': instance.ratingsQuantity,
      'category': instance.category,
      'in_wishlist': instance.inWishlist,
      'in_cart': instance.inCart,
    };

SubCategoryProductData _$SubCategoryProductDataFromJson(
        Map<String, dynamic> json) =>
    SubCategoryProductData(
      id: json['id'] as String?,
      title: json['title'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubCategoryProductDataToJson(
        SubCategoryProductData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'products': instance.products,
    };
