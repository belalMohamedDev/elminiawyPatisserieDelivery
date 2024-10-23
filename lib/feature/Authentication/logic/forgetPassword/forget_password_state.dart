part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;
  const factory ForgetPasswordState.loading() = ForgetPasswordLoadingData;
  const factory ForgetPasswordState.error(ApiErrorModel apiErrorModel) = ForgetPasswordButtonErrorData;
  const factory ForgetPasswordState.success(ApiSuccessGeneralModel data) = ForgetPasswordButtonSuccessData;
  const factory ForgetPasswordState.userForgetEmailAddress(String value ) = UserForgetEmailAddress;
  const factory ForgetPasswordState.userForgetButtonValidator(bool value) = ContinueForgetButtonValidator;



  const factory ForgetPasswordState.verifyCodeLoading() = VerifyCodeLoadingData;
  const factory ForgetPasswordState.verifyCodeError(
      ApiErrorModel apiErrorModel) = VerifyCodeButtonErrorData;
  const factory ForgetPasswordState.verifyCodeSuccess(ApiSuccessGeneralModel data) = VerifyCodeButtonSuccessData;
  const factory ForgetPasswordState.otpVerifyCode(String? value) = OtpVerifyCode;
  const factory ForgetPasswordState.verifyButtonValidator(bool value) = VerifyButtonValidator;


  const factory ForgetPasswordState.newPasswordLoading() = NewPasswordLoadingData;
  const factory ForgetPasswordState.newPasswordError(
      ApiErrorModel apiErrorModel) = NewPasswordButtonErrorData;
  const factory ForgetPasswordState.newPasswordSuccess(AuthResponse data) = NewPasswordButtonSuccessData;
  const factory ForgetPasswordState.userNewPassword(String value) = UserNewPassword;
  const factory ForgetPasswordState.userConfirmNewPassword(String value) = UserConfirmNewPassword;
  const factory ForgetPasswordState.showNewPassword(bool value) = ShowNewPassword;
  const factory ForgetPasswordState.showConfirmNewPassword(bool value) = ShowConfirmNewPassword;
  const factory ForgetPasswordState.createNewPasswordValidator(bool value) = CreateNewPasswordValidator;
}
