part of 'change_email_address_cubit.dart';

@freezed
class ChangeEmailAddressState with _$ChangeEmailAddressState {
  const factory ChangeEmailAddressState.initial() = _Initial;

  const factory ChangeEmailAddressState.changeEmailAddressLoading() =
      ChangeEmailAddressLoading;
  const factory ChangeEmailAddressState.changeEmailAddressError(
       ApiErrorModel apiErrorModel) = ChangeEmailAddressError;

  const factory ChangeEmailAddressState.changeEmailAddressSuccess(
      AuthResponse data) = ChangeEmailAddressSuccess;

        const factory ChangeEmailAddressState.changePasswordVisibilityState(
    bool isPasswordVisible,
  ) = ChangePasswordVisibilityState;
}
