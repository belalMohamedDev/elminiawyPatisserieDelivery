

import '../../../../../core/common/shared/shared_imports.dart'; //


abstract class OrderRepository {
  Future<ApiResult<CreateOrderResponse>> createCashOrder(
      CreateOrderRequestBody createOrderRequestBody);

  Future<ApiResult<CreateOrderResponse>> orderCancelledRepository(String id);


  Future<ApiResult<GetOrdersResponse>> getAllOrderCompleteRepository();
  Future<ApiResult<GetOrdersResponse>> getAllOrderPendingRepository();
}

class OrderRepositoryImplement implements OrderRepository {
  OrderRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;


  @override
  Future<ApiResult<CreateOrderResponse>> createCashOrder(
      CreateOrderRequestBody createOrderRequestBody) async {
 
      try {
        final response =
            await _apiService.createCashOrderService(createOrderRequestBody);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }

  }

  @override
  Future<ApiResult<CreateOrderResponse>> orderCancelledRepository(
      String id) async {
 
      try {
        final response = await _apiService.orderCancellService(id);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
  
  }
  
  @override
  Future<ApiResult<GetOrdersResponse>> getAllOrderCompleteRepository() async{
 
      try {
        final response = await _apiService.getAllOrderCompleteService();
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
 
  }
  
  @override
  Future<ApiResult<GetOrdersResponse>> getAllOrderPendingRepository() async {

      try {
        final response = await _apiService.getAllOrderPendingService();
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
 
  }
}
