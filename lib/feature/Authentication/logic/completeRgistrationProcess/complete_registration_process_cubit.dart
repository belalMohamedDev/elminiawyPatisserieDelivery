import 'package:driver/core/common/shared/shared_imports.dart';

part 'complete_registration_process_state.dart';

part 'complete_registration_process_cubit.freezed.dart';

class CompleteRegistrationProcessCubit extends Cubit<CompleteRegistrationProcessState> {
  CompleteRegistrationProcessCubit(this._imagePicker) : super(const CompleteRegistrationProcessState.initial());
  final ImagePicker _imagePicker;
  dynamic image = '';
  File newImage = File('');

   /////image picker
  Future<void> camera() async {
    final pickedImage =
        await _imagePicker.pickImage(source: ImageSource.camera);
    await setUserPicture(File(pickedImage?.path ?? ''));
    emit(
      CompleteRegistrationProcessState.imagePath(File(pickedImage?.path ?? '')),
    );
  }

  Future<void> gallery() async {
    final pickedImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    await setUserPicture(File(pickedImage?.path ?? ''));
    emit(
      CompleteRegistrationProcessState.imagePath(File(pickedImage?.path ?? '')),
    );
  }

  ////return path and upload image
  Future<dynamic> setUserPicture(File userPicture) async {
    if (userPicture.path.isNotEmpty) {
      //update register view object
      newImage = userPicture;

      image = MultipartFile.fromFileSync(
        userPicture.path,
        filename: userPicture.path.split(Platform.pathSeparator).last,
      );
    }
  }
}
