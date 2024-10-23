import '../../../../../core/common/shared/shared_imports.dart'; //

class SearchInProductRepository {
  SearchInProductRepository(this._apiService);

  final AppServiceClient _apiService;

  Future<ApiResult<ProductResponse>> searchInProduct(
      {String? sort, String? keyword, String? priceRange}) async {
    try {
      final response =
          await _apiService.searchInProductService(sort, keyword, priceRange);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
