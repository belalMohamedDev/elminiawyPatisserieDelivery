import '../../../../../core/common/shared/shared_imports.dart'; //

abstract class HomeRepository {
  Future<ApiResult<GetAllOrderResponse>> getOrdersRepo(
      String latitude, String longitude);

  Future<ApiResult<GetAllOrderResponse>> getDeliveredOrderRepo();

  Future<ApiResult<GetAllOrderResponse>> getCancelledOrderRepo();

  Future<ApiResult<GetAllOrderResponse>> getAcceptedDeliveredOrderRepo();

  Future<ApiResult<OrderAcceptResponse>> acceptOrderRepo(String orderId);

  Future<ApiResult<ApiSuccessGeneralModel>> canceledOrderRepo(String orderId);

  Future<ApiResult<DirectionsResponse>> getRouteCoordinates(
      LatLng origin, LatLng destination);
}

class HomeRepositoryImplement implements HomeRepository {
  HomeRepositoryImplement(
      this._apiService, this._directionsService, this._places);

  final AppServiceClient _apiService;
  final DirectionsService _directionsService;
  final GoogleMapsPlaces _places;

  @override
  Future<ApiResult<GetAllOrderResponse>> getOrdersRepo(
      String latitude, String longitude) async {
    try {
      final response =
          await _apiService.getAllOrderService(latitude, longitude);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<OrderAcceptResponse>> acceptOrderRepo(String orderId) async {
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

  @override
  Future<ApiResult<DirectionsResponse>> getRouteCoordinates(
      LatLng origin, LatLng destination) async {
    if (_places.apiKey == null) {
      return ApiResult.failure(ApiErrorHandler.handle("API key is missing"));
    }

    try {
      final originString = '${origin.latitude},${origin.longitude}';
      final destinationString =
          '${destination.latitude},${destination.longitude}';

      final response = await _directionsService.getRouteService(
        originString,
        destinationString,
        _places.apiKey!,
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<GetAllOrderResponse>> getAcceptedDeliveredOrderRepo() async {
    try {
      final response = await _apiService.getAcceptedDeliveredOrderService();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<GetAllOrderResponse>> getCancelledOrderRepo() async {
    try {
      final response = await _apiService.getCancelledOrderService();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<GetAllOrderResponse>> getDeliveredOrderRepo() async {
    try {
      final response = await _apiService.getDeliveredOrderService();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
