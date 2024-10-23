
import '../../../../../core/common/shared/shared_imports.dart'; //

part 'change_email_address_state.dart';
part 'change_email_address_cubit.freezed.dart';

class ChangeEmailAddressCubit extends Cubit<ChangeEmailAddressState> {
  ChangeEmailAddressCubit(this._changeEmailAddressRepository)
      : super(const ChangeEmailAddressState.initial());

  final ChangeEmailAddressRepository _changeEmailAddressRepository;

  final TextEditingController newEmailAddressController =
      TextEditingController();
  final TextEditingController confirmNewEmailAddressController =
      TextEditingController();
  final TextEditingController currentPasswordController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(ChangeEmailAddressState.changePasswordVisibilityState(
        isPasswordVisible));
  }

  Future<void> submitEmailAddressChange() async {
    emit(const ChangeEmailAddressState.changeEmailAddressLoading());

    final response = await _changeEmailAddressRepository.changeMyEmailAddress(
        ChangeEmailRequestBody(
            newEmail: newEmailAddressController.text.trim(),
            currentPassword: currentPasswordController.text.trim()));

    response.when(
      success: (dataResponse) async {
        emit(ChangeEmailAddressState.changeEmailAddressSuccess(dataResponse));
        clearAllControllers();
        await saveUserToken(
          dataResponse.accessToken!,
          dataResponse.data!.refreshToken!,
          dataResponse.data!.name!,
          dataResponse.data!.phone!,
          dataResponse.data!.email!,
          dataResponse.data!.sId!,
        );
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            ChangeEmailAddressState.changeEmailAddressError(
               error),
          );
        }
      },
    );
  }

  void clearAllControllers() {
    newEmailAddressController.clear();
    confirmNewEmailAddressController.clear();
    currentPasswordController.clear();
  }

  Future<void> saveUserToken(
    String accessToken,
    String refreshToken,
    String userName,
    String userPhone,
    String userEmail,
    String userId,
  ) async {
    await SharedPrefHelper.setSecuredString(PrefKeys.userPhone, userPhone);
    await SharedPrefHelper.setSecuredString(PrefKeys.userName, userName);
    await SharedPrefHelper.setSecuredString(PrefKeys.userEmail, userEmail);
    await SharedPrefHelper.setSecuredString(PrefKeys.userId, userId);

    await SharedPrefHelper.setSecuredString(PrefKeys.accessToken, accessToken);
    await SharedPrefHelper.setSecuredString(
        PrefKeys.refreshToken, refreshToken);
        
  }
}
