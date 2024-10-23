part of 'log_out_cubit.dart';

@freezed
class LogOutState with _$LogOutState {
  const factory LogOutState.initial() = _Initial;
  //get WishList State
  const factory LogOutState.logOutLoading() = LogOutLoading;
  const factory LogOutState.logOutError(
       ApiErrorModel apiErrorModel) = LogOutError;

  const factory LogOutState.logOutSuccess({required String successMessage}) =
      LogOutSuccess;

  const factory LogOutState.getStorageData(String userName) = GetStorageData;
}
