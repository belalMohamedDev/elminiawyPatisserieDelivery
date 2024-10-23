part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.userSignUpEmailAddress(String value) = UserSignUpEmailAddressState;
  const factory SignUpState.userSignUpPassword(String value) = UserSignUpPasswordState;
  const factory SignUpState.userSignUpFirstName(String value) = UserSignUpFirstNameState;
  const factory SignUpState.userSignUpLastName(String value) = UserSignUpLastNameState;
  const factory SignUpState.userSignUpPhone(String value) = UserSignUpPhoneState;
  const factory SignUpState.userSignUpCuntryCode(String value) = UserSignUpCuntryCodeState;
  const factory SignUpState.showUserSignUpPassword(bool value) = ShowUserSignUpPasswordState;
  const factory SignUpState.buttonSignUpVaildation(bool value) = ButtonSignUpVaildationState;
  const factory SignUpState.signUpAgreeWith(bool value) = signUpAgreeWithState;
  const factory SignUpState.loading() = SignUpButtonLoadingData;
  const factory SignUpState.error(ApiErrorModel apiErrorModel) = SignUpButtonErrorData;
  const factory SignUpState.suceess(AuthResponse data) = SignUpButtonSuccessData;
  const factory SignUpState.imagePath(File imagePath) = ImagePath;

}
