import '../../../../../core/common/shared/shared_imports.dart';

abstract class AuthenticationRepository {
  Future<ApiResult<AuthResponse>> registerToNewAccountRepo(
    RegisterRequestBody registerRequestBody,
    File imageFile,
  );

  Future<ApiResult<CompleteRegisterResponse>> completeRegisterRepo(
    CompleteRegisterRequestBody completeRegisterRequestBody,
    List<File> imageFiles,
  );

  Future<ApiResult<GetAllRegionsRsponse>> getStoreRegionsRepo();

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
    File imageFile,
  ) async {
    try {
  
      final response = await _apiService.registerService(
          registerRequestBody.name,
          registerRequestBody.email,
          registerRequestBody.password,
          registerRequestBody.phone,
          'delivery',
          imageFile);
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

  @override
  Future<ApiResult<CompleteRegisterResponse>> completeRegisterRepo(
    CompleteRegisterRequestBody completeRegisterRequestBody,
    List<File> imageFiles,
  ) async {
    try {
      List<MultipartFile> multipartFiles = [];

      for (File imageFile in imageFiles) {
        final MultipartFile image = MultipartFile.fromFileSync(
          imageFile.path,
          filename: imageFile.path.split(Platform.pathSeparator).last,
        );
        multipartFiles.add(image);
      }

      final response = await _apiService.completeRegisterService(
        completeRegisterRequestBody,
        multipartFiles,
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<GetAllRegionsRsponse>> getStoreRegionsRepo() async {
    try {
      final response = await _apiService.getStoreRegionsService();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
