import '../../../../../core/common/shared/shared_imports.dart'; //

class LogOutRepository {
  LogOutRepository(this._apiService);
  final AppServiceClient _apiService;


  Future<ApiResult<LogOutResponse>> logOut(String refreshToken) async {

      try {
        final response = await _apiService.logOut(refreshToken);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }

  }
}
