part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  //email
  const factory LoginEvent.userLoginEmailAddress(String value) =
      UserLoginEmailAddress;

  //password
  const factory LoginEvent.userLoginPassword(String value) = UserLoginPassword;
  const factory LoginEvent.userShowLoginPassword() = UserShowLoginPassword;

  //button
  const factory LoginEvent.userLoginButton() = UserLoginButton;
}
