import '../../../../../core/common/shared/shared_imports.dart'; //

part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  bool? status;
  String? message;
  PaginationRuslt? paginationRuslt;
  @JsonKey(name: "data")
  List<DataProductResponse>? data;

  ProductResponse({this.status, this.message, this.paginationRuslt, this.data});


  //from json
  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);

}

@JsonSerializable()
class PaginationRuslt {
  int? currentPage;
  int? limit;
  int? skip;
  int? numberOfPages;
  int? next;

  PaginationRuslt(
      {this.currentPage, this.limit, this.skip, this.numberOfPages, this.next});


  //from json
  factory PaginationRuslt.fromJson(Map<String, dynamic> json) =>
      _$PaginationRusltFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$PaginationRusltToJson(this);
}

@JsonSerializable()
class DataProductResponse {
  String? title;
  String? description;
  double? ratingsAverage;
  @JsonKey(name: "_id")
  String? sId;
  double? price;
  String? subCategory;
  String? image;
  String? publicId;
  int? ratingsQuantity;
  String? category;
  @JsonKey(name: "in_cart")
  bool? inCart;
  @JsonKey(name: "in_wishlist")
  bool? inWishlist;

  DataProductResponse(
      {this.title,
      this.inCart,
      this.ratingsAverage,
      this.inWishlist,
      this.description,
      this.sId,
      this.price,
      this.subCategory,
      this.image,
      this.publicId,
      this.ratingsQuantity,
      this.category});


  //from json
  factory DataProductResponse.fromJson(Map<String, dynamic> json) =>
      _$DataProductResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$DataProductResponseToJson(this);
}
