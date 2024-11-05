import '../../../../../core/common/shared/shared_imports.dart'; //

abstract class HomeRepository {
  Future<ApiResult<GetAllOrderResponse>> getOrdersRepo(
      String? latitude, String? longitude);

  Future<ApiResult<ApiSuccessGeneralModel>> acceptOrderRepo(String orderId);

  Future<ApiResult<ApiSuccessGeneralModel>> canceledOrderRepo(String orderId);
}

class HomeRepositoryImplement implements HomeRepository {
  HomeRepositoryImplement(this._apiService);

  final AppServiceClient _apiService;

  @override
  Future<ApiResult<GetAllOrderResponse>> getOrdersRepo(
      String? latitude, String? longitude) async {
    try {
      final response =
          await _apiService.getAllOrderService(latitude, longitude);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<ApiSuccessGeneralModel>> acceptOrderRepo(
      String orderId) async {
    try {
      final response = await _apiService.acceptOrderService(orderId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<ApiSuccessGeneralModel>> canceledOrderRepo(
      String orderId) async {
    try {
      final response = await _apiService.canceledOrderService(orderId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
