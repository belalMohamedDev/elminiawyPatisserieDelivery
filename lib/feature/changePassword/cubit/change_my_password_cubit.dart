import '../../../../../core/common/shared/shared_imports.dart'; //

part 'change_my_password_state.dart';
part 'change_my_password_cubit.freezed.dart';

class ChangeMyPasswordCubit extends Cubit<ChangeMyPasswordState> {
  ChangeMyPasswordCubit(this._changeMyPasswordRepository)
      : super(const ChangeMyPasswordState.initial());
  final ChangeMyPasswordRepository _changeMyPasswordRepository;

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController currentPasswordController =
      TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  Color lengthTextColor = ColorManger.brunLight;
  Color upperCaseTextColor = ColorManger.brunLight;
  Color lowerCaseTextColor = ColorManger.brunLight;
  Color numberTextColor = ColorManger.brunLight;
  Color specialCharTextColor = ColorManger.brunLight;

  bool isPasswordVisible = false;
  bool isCurrentPasswordVisible = false;
  bool isPasswordConfirmVisible = false;

  void validatePassword(String password) {
    lengthTextColor =
        password.length >= 8 ? Colors.green : ColorManger.brunLight;
    upperCaseTextColor = password.contains(RegExp(r'[A-Z]'))
        ? Colors.green
        : ColorManger.brunLight;
    lowerCaseTextColor = password.contains(RegExp(r'[a-z]'))
        ? Colors.green
        : ColorManger.brunLight;
    numberTextColor = password.contains(RegExp(r'[0-9]'))
        ? Colors.green
        : ColorManger.brunLight;
    specialCharTextColor = password.contains(RegExp(r'[-@#\$%^&*_=+,.?/!~]'))
        ? Colors.green
        : ColorManger.brunLight;

    emit(ChangeMyPasswordState.changeMyPasswordTextColorUpdated(
      lengthTextColor,
      upperCaseTextColor,
      lowerCaseTextColor,
      numberTextColor,
      specialCharTextColor,
    ));
  }

  void togglePasswordVisibility(String field) {
    if (field == 'current') {
      isCurrentPasswordVisible = !isCurrentPasswordVisible;
      emit(ChangeMyPasswordState.changePasswordVisibilityState(
          isCurrentPasswordVisible));
    } else if (field == 'new') {
      isPasswordVisible = !isPasswordVisible;
      emit(ChangeMyPasswordState.changePasswordVisibilityState(
          isPasswordVisible));
    } else if (field == 'confirm') {
      isPasswordConfirmVisible = !isPasswordConfirmVisible;
      emit(ChangeMyPasswordState.changePasswordVisibilityState(
          isPasswordConfirmVisible));
    }
  }

  Future<void> submitPasswordChange() async {
    emit(const ChangeMyPasswordState.changeMyPasswordLoading());

    final response = await _changeMyPasswordRepository.changeMypasswordRepo(
        ChangeMyPasswordRequestBody(
            password: passwordController.text.trim(),
            currentPassword: currentPasswordController.text.trim(),
            passwordConfirm: passwordConfirmController.text.trim()));

    response.when(
      success: (dataResponse) async {
        emit(ChangeMyPasswordState.changeMyPasswordSuccess(dataResponse));
        clearAllControllers();
        validatePassword("");
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            ChangeMyPasswordState.changeMyPasswordError(error),
          );
        }
      },
    );
  }

  void clearAllControllers() {
    passwordController.clear();
    passwordConfirmController.clear();
    currentPasswordController.clear();
  }
}
