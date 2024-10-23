part of 'account_information_cubit.dart';

@freezed
class AccountInformationState with _$AccountInformationState {
  const factory AccountInformationState.initial() = _Initial;

  const factory AccountInformationState.updateAccountInformationLoading() =
      UpdateAccountInformationLoading;
  const factory AccountInformationState.updateAccountInformationError(
       ApiErrorModel apiErrorModel) = UpdateAccountInformationError;

  const factory AccountInformationState.updateAccountInformationSuccess(
      UpdateAccountInformationResponse data) = UpdateAccountInformationSuccess;

  const factory AccountInformationState.getStorageData(
      String userEmail, String userName, String userPhone) = GetStorageData;

  const factory AccountInformationState.changeEnablTextFormField(
    bool enable,
  ) = ChangeEnablTextFormField;

  const factory AccountInformationState.noChangesDetected() = NoChangesDetected;



    const factory AccountInformationState.deleteAccountLoading() =
      DeleteAccountLoading;
  const factory AccountInformationState.deleteAccountError(
      ApiErrorModel apiErrorModel) = DeleteAccountError;

  const factory AccountInformationState.deleteAccountSuccess(
      DeleteAccountResponse data) = DeleteAccountSuccess;

}
