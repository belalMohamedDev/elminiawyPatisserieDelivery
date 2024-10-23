part of 'change_my_password_cubit.dart';

@freezed
class ChangeMyPasswordState with _$ChangeMyPasswordState {
  const factory ChangeMyPasswordState.initial() = _Initial;

  const factory ChangeMyPasswordState.changeMyPasswordLoading() =
      ChangeMyPasswordLoading;
  const factory ChangeMyPasswordState.changeMyPasswordError(
       ApiErrorModel apiErrorModel) = ChangeMyPasswordError;

  const factory ChangeMyPasswordState.changeMyPasswordSuccess(
      AuthResponse data) = ChangeMyPasswordSuccess;

  const factory ChangeMyPasswordState.changeMyPasswordTextColorUpdated(
      Color lengthTextColor,
      Color upperCaseTextColor,
      Color lowerCaseTextColor,
      Color numberTextColor,
      Color specialCharTextColor) = ChangeMyPasswordTextColorUpdated;

  const factory ChangeMyPasswordState.changePasswordVisibilityState(
    bool isPasswordVisible,
  ) = ChangePasswordVisibilityState;
}
