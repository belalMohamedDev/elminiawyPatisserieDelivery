import '../../../../../core/common/shared/shared_imports.dart'; //

class ChangeEmailAddressRepository {
  ChangeEmailAddressRepository(this._apiService);
  final AppServiceClient _apiService;


  Future<ApiResult<UpdateEmailAddressResponse>> changeMyEmailAddress(
    ChangeEmailRequestBody changeEmailRequestBody,
  ) async {

      try {
        final response = await _apiService.updateMyEmailAddress(changeEmailRequestBody);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
 
}
}
