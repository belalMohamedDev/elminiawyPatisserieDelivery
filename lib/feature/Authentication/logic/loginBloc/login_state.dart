part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  //textformfield user email
  const factory LoginState.userLoginEmailAddress(String value) =
      UserLoginEmailAddressState;

  //textformfield password
  const factory LoginState.userLoginPassword(String value) =
      UserLoginPasswordState;
  const factory LoginState.showUserPassword(bool value) = ShowUserPasswordState;

  //button
  const factory LoginState.buttonLoginVaildation(bool value) =
      ButtonLoginVaildation;
  const factory LoginState.loading() = LoginButtonLoadingData;
  const factory LoginState.error(
      ApiErrorModel apiErrorModel) = LoginButtonErrorData;
      
  const factory LoginState.suceess(AuthResponse data) = LoginButtonSuccessData;
}
