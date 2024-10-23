import '../../../../../core/common/shared/shared_imports.dart'; //

abstract class CartRepository {
  Future<ApiResult<CartResponse>> addItemToCart(
      AddItemToCartRequestBody addItemToCartRequestBody);

  Future<ApiResult<CartResponse>> getCartItem();

  Future<ApiResult<CartResponse>> removeItemFromCart(String id);

  Future<ApiResult<CartResponse>> updateItemQuantityFromCart(
    String id,
    int quantity,
  );

  Future<ApiResult<CartResponse>> applyCouponToCart(String coupon);

  Future<ApiResult<CartResponse>> removeCartRepo();
}

class CartRepositoryImplement implements CartRepository {
  CartRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;

  @override
  Future<ApiResult<CartResponse>> addItemToCart(
      AddItemToCartRequestBody addItemToCartRequestBody) async {
    try {
      final response =
          await _apiService.addItemToCart(addItemToCartRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<CartResponse>> getCartItem() async {
    try {
      final response = await _apiService.getCartItem();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<CartResponse>> removeItemFromCart(String id) async {
    try {
      final response = await _apiService.removeItemFromCart(id);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<CartResponse>> updateItemQuantityFromCart(
      String id, int quantity) async {
    try {
      final response =
          await _apiService.updateItemQuantityFromCart(id, quantity);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<CartResponse>> applyCouponToCart(String coupon) async {
    try {
      final response = await _apiService.applyCouponToCart(coupon);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<CartResponse>> removeCartRepo() async {
    try {
      final response = await _apiService.deleteCartService();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
