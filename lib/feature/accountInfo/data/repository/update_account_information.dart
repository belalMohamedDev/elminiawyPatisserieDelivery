import '../../../../../core/common/shared/shared_imports.dart'; //

abstract class AccountInformationRepository {
  Future<ApiResult<UpdateAccountInformationResponse>> updateAccountInformation(
      UpdateAccountInformationRequestBody updateAccountInformationRequestBody);

  Future<ApiResult<DeleteAccountResponse>> deleteAccountRepo();
}

class AccountInformationRepositoryImplement
    implements AccountInformationRepository {
  AccountInformationRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;


  @override
  Future<ApiResult<UpdateAccountInformationResponse>> updateAccountInformation(
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
  Future<ApiResult<DeleteAccountResponse>> deleteAccountRepo() async {

      try {
        final response = await _apiService.deleteMyAccountService();
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
    }
  }

