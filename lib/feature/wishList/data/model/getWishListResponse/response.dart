import '../../../../../core/common/shared/shared_imports.dart'; //

part 'response.g.dart';

@JsonSerializable()
class WishListProduct {
  bool? status;
  String? message;
  @JsonKey(name: "data")
  List<WishListProductData>? data;

  WishListProduct({this.status, this.message, this.data});

  //from json
  factory WishListProduct.fromJson(Map<String, dynamic> json) =>
      _$WishListProductFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$WishListProductToJson(this);
}

@JsonSerializable()
class WishListProductData {
  String? title;
  String? description;
  @JsonKey(name: "in_cart")
  bool? inCart;
  double? ratingsAverage;
  @JsonKey(name: "_id")
  String? sId;
  int? price;
  String? subCategory;
  String? image;
  String? publicId;
  int? ratingsQuantity;
  String? category;
  @JsonKey(name: "in_wishlist")
  bool? inWishlist;

  WishListProductData(
      {this.title,
      this.description,
      this.inCart,
      this.ratingsAverage,
      this.sId,
      this.price,
      this.subCategory,
      this.image,
      this.publicId,
      this.ratingsQuantity,
      this.category,
      this.inWishlist});

  //from json
  factory WishListProductData.fromJson(Map<String, dynamic> json) =>
      _$WishListProductDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$WishListProductDataToJson(this);
}
