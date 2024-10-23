import '../../../../../core/common/shared/shared_imports.dart'; //

abstract class WishListRepository {
  Future<ApiResult<WishListProduct>> addOrRemoveProductFromWishList(
      String product);

  Future<ApiResult<WishListProduct>> getWishList();
}

class WishListRepositoryImplement implements WishListRepository {
  WishListRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;


  @override
  Future<ApiResult<WishListProduct>> addOrRemoveProductFromWishList(
      String product) async {

      try {
        final response =
            await _apiService.addOrRemoveProductFromWishList(product);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }

  }

  @override
  Future<ApiResult<WishListProduct>> getWishList() async {

      try {
        final response = await _apiService.getWishList();
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
  
  }


}
