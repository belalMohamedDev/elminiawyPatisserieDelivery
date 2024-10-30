import 'package:driver/core/common/shared/shared_imports.dart';

part 'complete_registration_process_state.dart';

part 'complete_registration_process_cubit.freezed.dart';

class CompleteRegistrationProcessCubit
    extends Cubit<CompleteRegistrationProcessState> {
  CompleteRegistrationProcessCubit(
      this._imagePicker, this._authenticationRepositoryImplement)
      : super(const CompleteRegistrationProcessState.initial());

  final AuthenticationRepositoryImplement _authenticationRepositoryImplement;
  final ImagePicker _imagePicker;

  List<File> images = [];
  List<String?> regionValues = [];
  String? _deliveryType;
  String? _deliveryRegion;
  String? _deliveryTypeOfTheVehicle;
  final TextEditingController deliveryNationalId = TextEditingController();

  String getNationalIdWithoutMask(String text) {
    return text.replaceAll(RegExp(r'[^0-9]'), '');
  }

  void setDeliveryType(String value) {
    _deliveryType = value;
  }

  void setDeliveryRegion(String value) {
    _deliveryRegion = value;
  }

  void setDeliveryTypeOfTheVehicle(String value) {
    _deliveryTypeOfTheVehicle = value;
  }

  bool isDataVaildation() {
    if (_deliveryType != null &&
        _deliveryRegion != null &&
        _deliveryTypeOfTheVehicle != null &&
        deliveryNationalId.text.isNotEmpty &&
        images.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

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

    final response =
        await _authenticationRepositoryImplement.getStoreRegionsRepo();

    response.when(
      success: (dataResponse) {
        regionValues =
            dataResponse.data!.map((region) => region.branchArea).toList();

        emit(
            CompleteRegistrationProcessState.getAllRegionSuccess(dataResponse));
      },
      failure: (error) {
        emit(
          CompleteRegistrationProcessState.getAllRegionError(error),
        );
      },
    );
  }

  Future<void> sendCompleteRegisterRequest() async {
    emit(const CompleteRegistrationProcessState.completeRegisterLoading());

    String nationalIdWithoutMask =
        getNationalIdWithoutMask(deliveryNationalId.text);

    final response =
        await _authenticationRepositoryImplement.completeRegisterRepo(
            CompleteRegisterRequestBody(
                deliveryType: _deliveryType,
                nationalId: nationalIdWithoutMask,
                region: _deliveryRegion,
                typeOfTheVehicle: _deliveryTypeOfTheVehicle),
            images);

    response.when(
      success: (dataResponse) {
        emit(CompleteRegistrationProcessState.completeRegisterSuccess(
            dataResponse));
      },
      failure: (error) {
        emit(
          CompleteRegistrationProcessState.completeRegisterError(error),
        );
      },
    );
  }
}
