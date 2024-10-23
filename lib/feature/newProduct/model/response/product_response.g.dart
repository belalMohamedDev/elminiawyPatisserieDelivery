// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      paginationRuslt: json['paginationRuslt'] == null
          ? null
          : PaginationRuslt.fromJson(
              json['paginationRuslt'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
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

DataProductResponse _$DataProductResponseFromJson(Map<String, dynamic> json) =>
    DataProductResponse(
      title: json['title'] as String?,
      inCart: json['in_cart'] as bool?,
      ratingsAverage: (json['ratingsAverage'] as num?)?.toDouble(),
      inWishlist: json['in_wishlist'] as bool?,
      description: json['description'] as String?,
      sId: json['_id'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      subCategory: json['subCategory'] as String?,
      image: json['image'] as String?,
      publicId: json['publicId'] as String?,
      ratingsQuantity: (json['ratingsQuantity'] as num?)?.toInt(),
      category: json['category'] as String?,
    );

Map<String, dynamic> _$DataProductResponseToJson(
        DataProductResponse instance) =>
    <String, dynamic>{
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
      'in_cart': instance.inCart,
      'in_wishlist': instance.inWishlist,
    };
