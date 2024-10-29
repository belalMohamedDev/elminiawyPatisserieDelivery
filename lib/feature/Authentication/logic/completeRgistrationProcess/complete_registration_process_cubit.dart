import 'package:driver/core/common/shared/shared_imports.dart';

part 'complete_registration_process_state.dart';

part 'complete_registration_process_cubit.freezed.dart';

class CompleteRegistrationProcessCubit
    extends Cubit<CompleteRegistrationProcessState> {
  CompleteRegistrationProcessCubit(this._imagePicker, this._authenticationRepositoryImplement)
      : super(const CompleteRegistrationProcessState.initial());

  final AuthenticationRepositoryImplement _authenticationRepositoryImplement;
  final ImagePicker _imagePicker;
  dynamic image = '';
  File newImage = File('');

  List<File> images = [];

  Future<void> pickImage(ImageSource source) async {
    final pickedImage = await _imagePicker.pickImage(source: source);
    if (pickedImage != null) {
      final imageFile = File(pickedImage.path);
      images.add(imageFile);
      emit(CompleteRegistrationProcessState.imagePath(List.from(images)));
    }
  }

  void removeImage(int index) {
    images.removeAt(index);
    emit(CompleteRegistrationProcessState.imagePath(List.from(images)));
  }

  Future<void> getAllRegionsRequest() async {
    emit(const CompleteRegistrationProcessState.getAllRegionLoading());

    final response = await _authenticationRepositoryImplement.getStoreRegionsRepo();

    response.when(
      success: (dataResponse) {
        emit(CompleteRegistrationProcessState.getAllRegionSuccess(
            dataResponse));
      },
      failure: (error) {
        emit(
          CompleteRegistrationProcessState.getAllRegionError(error),
        );
      },
    );
  }

  //   Future<void> sendCompleteRegisterRequest() async {
  //   emit(const CompleteRegistrationProcessState.getAllRegionLoading());

  //   final response =
  //       await _authenticationRepositoryImplement.getStoreRegionsRepo();

  //   response.when(
  //     success: (dataResponse) {
  //       emit(
  //           CompleteRegistrationProcessState.getAllRegionSuccess(dataResponse));
  //     },
  //     failure: (error) {
  //       emit(
  //         CompleteRegistrationProcessState.getAllRegionError(error),
  //       );
  //     },
  //   );
  // }
}
