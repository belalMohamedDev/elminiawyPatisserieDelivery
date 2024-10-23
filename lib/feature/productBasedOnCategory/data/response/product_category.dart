import '../../../../../core/common/shared/shared_imports.dart'; //
part 'product_category.g.dart';

@JsonSerializable()
class GetProductsBasedOnCategory {
  bool? status;
  String? message;
  @JsonKey(name: "AllProducts")
  List<Products>? allProducts;
  @JsonKey(name: "data")
  List<SubCategoryProductData>? data;

  GetProductsBasedOnCategory(
      {this.status, this.message, this.allProducts, this.data});

  //from json
  factory GetProductsBasedOnCategory.fromJson(Map<String, dynamic> json) =>
      _$GetProductsBasedOnCategoryFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetProductsBasedOnCategoryToJson(this);
}

@JsonSerializable()
class Products {
  String? title;
  String? description;
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
  @JsonKey(name: "in_cart")
  bool? inCart;

  Products(
      {this.title,
      this.description,
      this.ratingsAverage,
      this.sId,
      this.price,
      this.subCategory,
      this.image,
      this.publicId,
      this.ratingsQuantity,
      this.category});

  //from json
  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}

@JsonSerializable()
class SubCategoryProductData {
  String? id;
  String? title;
  List<Products>? products;

  SubCategoryProductData({this.id, this.title, this.products});

  //from json
  factory SubCategoryProductData.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryProductDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$SubCategoryProductDataToJson(this);
}
