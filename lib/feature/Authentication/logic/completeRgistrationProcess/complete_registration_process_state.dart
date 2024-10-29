part of 'complete_registration_process_cubit.dart';

@freezed
class CompleteRegistrationProcessState with _$CompleteRegistrationProcessState {
  const factory CompleteRegistrationProcessState.initial() = _Initial;
  const factory CompleteRegistrationProcessState.imagePath(
      List<File> imagesPath) = CompleteRegistrationProcessImagePath;

  const factory CompleteRegistrationProcessState.getAllRegionLoading() =
      GetAllRegionLoading;
  const factory CompleteRegistrationProcessState.getAllRegionError(
      ApiErrorModel apiErrorModel) = GetAllRegionError;

  const factory CompleteRegistrationProcessState.getAllRegionSuccess(
      GetAllRegionsRsponse data) = GetAllRegionSuccess;

  const factory CompleteRegistrationProcessState.completeRegisterLoading() = CompleteRegisterLoading;
  const factory CompleteRegistrationProcessState.completeRegisterError(
      ApiErrorModel apiErrorModel) = CompleteRegisterError;

  const factory CompleteRegistrationProcessState.completeRegisterSuccess(
      CompleteRegisterResponse data) = CompleteRegisterSuccess;
}
