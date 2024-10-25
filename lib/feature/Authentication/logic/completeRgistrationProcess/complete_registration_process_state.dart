part of 'complete_registration_process_cubit.dart';

@freezed
class CompleteRegistrationProcessState with _$CompleteRegistrationProcessState {
  const factory CompleteRegistrationProcessState.initial() = _Initial;
  const factory CompleteRegistrationProcessState.imagePath(File imagePath) = CompleteRegistrationProcessImagePath;
}
