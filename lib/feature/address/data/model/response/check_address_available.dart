class CheckLocationAvailableResponse {
  bool? status;
  String? message;
  String? englishAddress;
  String? arabicAddress;
  bool? storeAddressAvailable;
  bool? isAddressAvailable;
  String? nearbyStoreAddressId;

  CheckLocationAvailableResponse(
      {this.status,
      this.message,
      this.englishAddress,
      this.arabicAddress,
      this.storeAddressAvailable,
      this.isAddressAvailable,
      this.nearbyStoreAddressId
      });

  CheckLocationAvailableResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    arabicAddress = json['arabicAddress'];
    englishAddress = json['englishAddress'];
    storeAddressAvailable = json['StoreAddressAvailable'];
    isAddressAvailable = json['isAddressAvailable'];
    nearbyStoreAddressId = json['nearbyStoreAddressId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['englishAddress'] = englishAddress;
    data['arabicAddress'] = arabicAddress;
    data['StoreAddressAvailable'] = storeAddressAvailable;
    data['isAddressAvailable'] = isAddressAvailable;
    data['nearbyStoreAddressId'] = nearbyStoreAddressId;
    return data;
  }
}
