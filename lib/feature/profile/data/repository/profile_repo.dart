import '../../../../../core/common/shared/shared_imports.dart'; //

abstract class ProfileRepository {
  Future<ApiResult<ApiSuccessGeneralModel>> logOutRepo(String refreshToken);
  Future<ApiResult<AuthResponse>> changeUserDeliveryImageRepo(File image);
}

class ProfileRepositoryImplement implements ProfileRepository {
  ProfileRepositoryImplement(this._apiService);

  final AppServiceClient _apiService;

  @override
  Future<ApiResult<ApiSuccessGeneralModel>> logOutRepo(
      String refreshToken) async {
    try {
      final response = await _apiService.logOut(refreshToken);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<AuthResponse>> changeUserDeliveryImageRepo(
      File image) async {
    try {
      final response = await _apiService.updateDeliveryImageService(image);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
