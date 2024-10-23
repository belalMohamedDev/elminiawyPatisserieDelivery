// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddItemToCartRequestBody _$AddItemToCartRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AddItemToCartRequestBody(
      product: json['product'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$AddItemToCartRequestBodyToJson(
        AddItemToCartRequestBody instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
    };
