import '../../../../../core/common/shared/shared_imports.dart'; //


abstract class HomeRepository {
  Future<ApiResult<BannerResponse>> getBanner();
  Future<ApiResult<CategoryResponse>> getCategories(String sort);

}

class HomeRepositoryImplement implements HomeRepository {
  HomeRepositoryImplement( this._apiService);


  final AppServiceClient _apiService;

  @override
  Future<ApiResult<BannerResponse>> getBanner() async {

      try {
        final response = await _apiService.getBanners();
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
   
  }

  @override
  Future<ApiResult<CategoryResponse>> getCategories(String sort) async {
 
      try {
        final response = await _apiService.getCategories(sort);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
   
  }



}
