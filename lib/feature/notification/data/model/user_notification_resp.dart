import 'package:json_annotation/json_annotation.dart';
part 'user_notification_resp.g.dart';

@JsonSerializable()
class UserNotificationResponse {
  bool? status;
  String? message;
  List<UserNotificationData>? data;

  UserNotificationResponse({this.status, this.message, this.data});

  //from json
  factory UserNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$UserNotificationResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$UserNotificationResponseToJson(this);
}

@JsonSerializable()
class UserNotificationData {
  bool? isSeen;
  @JsonKey(name: "_id")
  String? sId;
  NotificationId? notificationId;

  UserNotificationData({this.isSeen, this.sId, this.notificationId});

  //from json
  factory UserNotificationData.fromJson(Map<String, dynamic> json) =>
      _$UserNotificationDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$UserNotificationDataToJson(this);
}

@JsonSerializable()
class NotificationId {
  String? sId;
  String? title;
  String? description;

  NotificationId({
    this.sId,
    this.title,
    this.description,
  });

  //from json
  factory NotificationId.fromJson(Map<String, dynamic> json) =>
      _$NotificationIdFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$NotificationIdToJson(this);
}
