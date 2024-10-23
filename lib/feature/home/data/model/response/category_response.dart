class CategoryResponse {
  bool? status;
  String? message;
  PaginationRuslt? paginationRuslt;
  List<Data>? data;

  CategoryResponse(
      {this.status, this.message, this.paginationRuslt, this.data});

  CategoryResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    paginationRuslt = json['paginationRuslt'] != null
        ? PaginationRuslt.fromJson(json['paginationRuslt'])
        : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (paginationRuslt != null) {
      data['paginationRuslt'] = paginationRuslt!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PaginationRuslt {
  int? currentPage;
  int? limit;
  int? skip;
  int? numberOfPages;
  int? next;

  PaginationRuslt(
      {this.currentPage, this.limit, this.skip, this.numberOfPages, this.next});

  PaginationRuslt.fromJson(Map<String, dynamic> json) {
    currentPage = json['currentPage'];
    limit = json['limit'];
    skip = json['skip'];
    numberOfPages = json['numberOfPages'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['currentPage'] = currentPage;
    data['limit'] = limit;
    data['skip'] = skip;
    data['numberOfPages'] = numberOfPages;
    data['next'] = next;
    return data;
  }
}

class Data {
  String? title;
  String? sId;
  String? createdAt;
  String? updatedAt;
  String? image;
  String? publicId;

  Data(
      {this.title,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.publicId});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    image = json['image'];
    publicId = json['publicId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['_id'] = sId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['image'] = image;
    data['publicId'] = publicId;
    return data;
  }
}
