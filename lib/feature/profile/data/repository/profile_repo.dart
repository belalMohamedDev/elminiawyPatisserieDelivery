import '../../../../../core/common/shared/shared_imports.dart'; //

abstract class ProfileRepository {
  Future<ApiResult<ApiSuccessGeneralModel>> logOutRepo(String refreshToken);
  Future<ApiResult<AuthResponse>> changeUserDeliveryImageRepo(File image);
  Future<ApiResult<AuthResponse>> updateAccountInformation(
      UpdateAccountInformationRequestBody updateAccountInformationRequestBody);

  Future<ApiResult<ApiSuccessGeneralModel>> deleteAccountRepo();

  Future<ApiResult<AuthResponse>> changeMyEmailAddress(
    ChangeEmailRequestBody changeEmailRequestBody,
  );

  Future<ApiResult<AuthResponse>> changeMypasswordRepo(
    ChangeMyPasswordRequestBody changeMyPasswordRequestBody,
  );
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

  @override
  Future<ApiResult<AuthResponse>> updateAccountInformation(
      UpdateAccountInformationRequestBody
          updateAccountInformationRequestBody) async {
    try {
      final response =
          await _apiService.updateMyData(updateAccountInformationRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<ApiSuccessGeneralModel>> deleteAccountRepo() async {
    try {
      final response = await _apiService.deleteMyAccountService();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<AuthResponse>> changeMyEmailAddress(
    ChangeEmailRequestBody changeEmailRequestBody,
  ) async {
    try {
      final response =
          await _apiService.updateMyEmailAddress(changeEmailRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
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
