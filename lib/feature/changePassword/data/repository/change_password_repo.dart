import '../../../../../core/common/shared/shared_imports.dart'; //

class ChangeMyPasswordRepository {
  ChangeMyPasswordRepository(this._apiService);
  final AppServiceClient _apiService;


  Future<ApiResult<AuthResponse>> changeMypasswordRepo(
    ChangeMyPasswordRequestBody changeMyPasswordRequestBody,
  ) async {

      try {
        final response = await _apiService
            .updateMyPasswordService(changeMyPasswordRequestBody);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
   
}
}
