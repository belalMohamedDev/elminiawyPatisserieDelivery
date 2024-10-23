
import '../../../../../core/common/shared/shared_imports.dart'; //

class ProductRepository {
  ProductRepository( this._apiService);


  final AppServiceClient _apiService;

  Future<ApiResult<ProductResponse>> getNewProduct(
    ) async {
  
      try {
        final response = await _apiService.getProduct();
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
   
  }
}
