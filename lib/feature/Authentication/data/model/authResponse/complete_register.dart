import 'package:json_annotation/json_annotation.dart';

part 'complete_register.g.dart';

@JsonSerializable()
class CompleteRegisterResponse {
  bool? status;
  String? message;
  CompleteRegisterData? data;

  CompleteRegisterResponse({this.status, this.message, this.data});


      //from json
  factory CompleteRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$CompleteRegisterResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$CompleteRegisterResponseToJson(this);
}


@JsonSerializable()
class CompleteRegisterData {
  String? region;
  String? deliveryType;
  List<String>? images;
  List<String>? publicIds;
  String? status;
  String? typeOfTheVehicle;
  CompleteRegisterLocation? location;
  String? nationalId;
  String? user;
  String? sId;


  CompleteRegisterData(
      {this.region,
      this.deliveryType,
      this.images,
      this.publicIds,
      this.status,
      this.typeOfTheVehicle,
      this.location,
      this.nationalId,
      this.user,
      this.sId,
});

          //from json
  factory CompleteRegisterData.fromJson(Map<String, dynamic> json) =>
      _$CompleteRegisterDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$CompleteRegisterDataToJson(this);
}


@JsonSerializable()
class CompleteRegisterLocation {
  String? type;
  List<int>? coordinates;

  CompleteRegisterLocation({this.type, this.coordinates});


      //from json
  factory CompleteRegisterLocation.fromJson(Map<String, dynamic> json) =>
      _$CompleteRegisterLocationFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$CompleteRegisterLocationToJson(this);
}
