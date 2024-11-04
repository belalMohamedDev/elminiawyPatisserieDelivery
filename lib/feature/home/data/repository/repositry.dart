import '../../../../../core/common/shared/shared_imports.dart'; //

abstract class HomeRepository {
  Future<ApiResult<GetAllOrderResponse>> getOrdersRepo();
}

class HomeRepositoryImplement implements HomeRepository {
  HomeRepositoryImplement(this._apiService);

  final AppServiceClient _apiService;

  @override
  Future<ApiResult<GetAllOrderResponse>> getOrdersRepo() async {
    try {
      final response = await _apiService.getAllOrderService();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
