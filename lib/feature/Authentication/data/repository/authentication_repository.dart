
import '../../../../../core/common/shared/shared_imports.dart';

abstract class AuthenticationRepository {


  Future<ApiResult<AuthResponse>> registerToNewAccountRepo(
    RegisterRequestBody registerRequestBody,
  );

  Future<ApiResult<AuthResponse>> loginRepo(
    LoginRequestBody loginRequestBody,
  );

  Future<ApiResult<ApiSuccessGeneralModel>> forgetPassword(
    ForgetPasswordRequestBody forgetPasswordRequestBody,
  );

  Future<ApiResult<AuthResponse>> newPassword(
    NewPasswordRequestBody newPasswordRequestBody,
  );
  Future<ApiResult<ApiSuccessGeneralModel>> verifyCode(
    VerifyCodeRequestBody verifyCodeRequestBody,
  );
}

class AuthenticationRepositoryImplement implements AuthenticationRepository {
  AuthenticationRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;



  @override
  Future<ApiResult<AuthResponse>> registerToNewAccountRepo(
    RegisterRequestBody registerRequestBody,
  ) async {
    try {
      final response = await _apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<AuthResponse>> loginRepo(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<ApiSuccessGeneralModel>> forgetPassword(
    ForgetPasswordRequestBody forgetPasswordRequestBody,
  ) async {
    try {
      final response =
          await _apiService.forgetPassword(forgetPasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<AuthResponse>> newPassword(
    NewPasswordRequestBody newPasswordRequestBody,
  ) async {
    try {
      final response = await _apiService.newPassword(newPasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<ApiSuccessGeneralModel>> verifyCode(
    VerifyCodeRequestBody verifyCodeRequestBody,
  ) async {
    try {
      final response = await _apiService.verifyCode(verifyCodeRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
