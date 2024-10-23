import '../../../../../core/common/shared/shared_imports.dart'; //

class GetProductBasedOnCategoryRepository {
  GetProductBasedOnCategoryRepository(this._apiService);
  final AppServiceClient _apiService;


  Future<ApiResult<GetProductsBasedOnCategory>> getProductBasedOnCategory(
      String id) async {

      try {
        final response = await _apiService.getProductsBasedOnCategory(id);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
 
  }
}
