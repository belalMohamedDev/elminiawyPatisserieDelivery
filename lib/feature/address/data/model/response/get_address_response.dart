import 'package:json_annotation/json_annotation.dart';

part 'get_address_response.g.dart';

@JsonSerializable()
class GetAddressResponse {
  bool? status;
  String? message;
  PaginationRuslt? paginationRuslt;
  List<GetAddressResponseData>? data;

  GetAddressResponse(
      {this.status, this.message, this.paginationRuslt, this.data});

      
  //from json
  factory GetAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAddressResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetAddressResponseToJson(this);
}

@JsonSerializable()
class PaginationRuslt {
  int? currentPage;
  int? limit;
  int? skip;
  int? numberOfPages;

  PaginationRuslt(
      {this.currentPage, this.limit, this.skip, this.numberOfPages});

      
  //from json
  factory PaginationRuslt.fromJson(Map<String, dynamic> json) =>
      _$PaginationRusltFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$PaginationRusltToJson(this);
}

@JsonSerializable()
class GetAddressResponseData {
  GetAddressResponseLocation? location;
  @JsonKey(name: "_id")
  String? sId;
  String? alias;
  String? buildingName;
  String? apartmentNumber;
  String? floor;
  String? region;
  String? additionalDirections;
  String? streetName;
  String? phone;
  String? addressLabel;
  String? user;
  String? nearbyStoreAddress;
  String? createdAt;
  String? updatedAt;

  GetAddressResponseData(
      {this.location,
      this.sId,
      this.alias,
      this.buildingName,
      this.apartmentNumber,
      this.floor,
      this.region,
      this.additionalDirections,
      this.streetName,
      this.phone,
      this.addressLabel,
      this.user,
      this.nearbyStoreAddress,
      this.createdAt,
      this.updatedAt});

      
  //from json
  factory GetAddressResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetAddressResponseDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetAddressResponseDataToJson(this);
}

@JsonSerializable()
class GetAddressResponseLocation {
  String? type;
  List<double>? coordinates;

  GetAddressResponseLocation({this.type, this.coordinates});

  
  //from json
  factory GetAddressResponseLocation.fromJson(Map<String, dynamic> json) =>
      _$GetAddressResponseLocationFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetAddressResponseLocationToJson(this);
}
