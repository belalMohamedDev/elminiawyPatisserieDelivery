part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordEvent with _$ForgetPasswordEvent {
  const factory ForgetPasswordEvent.started() = _Started;

  const factory ForgetPasswordEvent.userForgetPasswordEmailAddress(String value) = UserForgetPasswordEmailAddressEvent;
  const factory ForgetPasswordEvent.userForgetPasswordButton() = UserForgetPasswordButtonEvent;


  const factory ForgetPasswordEvent.userForgetPasswordOTP(String value) = UserForgetPasswordOTPButtonEvent;
  const factory ForgetPasswordEvent.userForgetPasswordVerifyButton() = UserForgetPasswordVerifyButtonEvent;

  const factory ForgetPasswordEvent.userForgetNewPassword(String value) = UserForgetNewPasswordEvent;
  const factory ForgetPasswordEvent.userForgetNewPasswordButton() = UserForgetNewPasswordButtonEvent;
  const factory ForgetPasswordEvent.userConfirmForgetNewPassword(String value) = UserConfirmForgetNewPasswordEvent;
  const factory ForgetPasswordEvent.userShowConfirmForgetNewPassword( ) = UserShowConfirmForgetNewPasswordEvent;
  const factory ForgetPasswordEvent.userShowForgetNewPassword( ) = UserShowForgetNewPasswordEvent;



}