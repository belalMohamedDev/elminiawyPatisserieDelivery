import 'package:driver/core/common/shared/shared_imports.dart';

part 'change_user_delivery_image_state.dart';
part 'change_user_delivery_image_cubit.freezed.dart';

class ChangeUserDeliveryImageCubit extends Cubit<ChangeUserDeliveryImageState> {
  ChangeUserDeliveryImageCubit(this._logOutRepository, this._imagePicker)
      : super(const ChangeUserDeliveryImageState.initial());

  final ProfileRepositoryImplement _logOutRepository;

  String? initialUserImage;

  final ImagePicker _imagePicker;

  Future<void> getUserImage() async {
    initialUserImage =
        await SharedPrefHelper.getSecuredString(PrefKeys.userImage);

    emit(ChangeUserDeliveryImageState.getStorageData(initialUserImage!));
  }

  Future<void> pickImage(ImageSource source) async {
    final pickedImage = await _imagePicker.pickImage(source: source);
    if (pickedImage != null) {
      final imageFile = File(pickedImage.path);
 
      changeUserDeliveryRequest(imageFile);
    }
  }

  Future<void> changeUserDeliveryRequest(File image) async {
    emit(const ChangeUserDeliveryImageState.changeUserDeliveryImageLoading());

    final response = await _logOutRepository.changeUserDeliveryImageRepo(image);

    response.when(
      success: (response) async {
        await SharedPrefHelper.setSecuredString(
            PrefKeys.userImage, response.data!.image!);

        initialUserImage = response.data!.image;

        emit(ChangeUserDeliveryImageState.changeUserDeliveryImageSuccess(
            response, initialUserImage!));
      },
      failure: (error) {
        emit(
          ChangeUserDeliveryImageState.changeUserDeliveryImageError(error),
        );
      },
    );
  }
}
