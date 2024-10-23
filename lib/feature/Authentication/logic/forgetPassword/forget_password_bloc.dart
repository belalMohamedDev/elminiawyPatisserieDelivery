import '../../../../../../core/common/shared/shared_imports.dart'; // Import necessary shared utilities

part 'forget_password_event.dart';
part 'forget_password_state.dart';
part 'forget_password_bloc.freezed.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  final AuthenticationRepositoryImplement _forgetPasswordRepository;
  final AuthenticationRepositoryImplement _verifyCodeRepository;
  final AuthenticationRepositoryImplement _newPasswordRepository;
  final context = instance<GlobalKey<NavigatorState>>().currentState!.context;

  String? code; // Variable to store the verification code
  bool showNewPassword = true; // Toggle visibility of new password field
  bool showConfirmNewPassword =
      true; // Toggle visibility of confirm password field

  // Validators for the various buttons
  bool isCreateNewPasswordButtonValid = false;
  bool isVerifyCodeButtonValid = false;
  bool isContinueForgetPasswordButtonValid = false;

  // Controllers for the text fields
  final TextEditingController userForgetPasswordEmailAddress =
      TextEditingController();
  final TextEditingController userNewPassword = TextEditingController();
  final TextEditingController userConfirmNewPassword = TextEditingController();

  ForgetPasswordBloc(
    this._forgetPasswordRepository,
    this._newPasswordRepository,
    this._verifyCodeRepository,
  ) : super(const _Initial()) {
    // Register event handlers for different events
    on<UserForgetNewPasswordButtonEvent>(createNewPassword);
    on<UserForgetPasswordVerifyButtonEvent>(verifyCode);
    on<UserForgetPasswordButtonEvent>(continueForgetPassword);

    // General event handler
    on<ForgetPasswordEvent>((event, emit) {
      event.whenOrNull(
        userShowForgetNewPassword: () {
          showNewPassword = !showNewPassword;
          emit(ForgetPasswordState.showNewPassword(showNewPassword));
        },
        userShowConfirmForgetNewPassword: () {
          showConfirmNewPassword = !showConfirmNewPassword;
          emit(ForgetPasswordState.showConfirmNewPassword(
              showConfirmNewPassword));
        },
        userForgetPasswordEmailAddress: (value) {
          validateForgetPasswordButton(emit);
          if (!AppRegex.isEmailValid(value)) {
            emit(ForgetPasswordState.userForgetEmailAddress(
                context.translate(AppStrings.pleaseEnterValidEmail)));
          } else {
            emit(const ForgetPasswordState.userForgetEmailAddress(''));
          }
        },
        userForgetNewPassword: (value) {
          validateNewPasswordButton(emit);
          if (!AppRegex.isPasswordValid(value)) {
            emit(ForgetPasswordState.userNewPassword(
                context.translate(AppStrings.pleaseEnterValidPassword)));
          }
        },
        userConfirmForgetNewPassword: (value) {
          validateNewPasswordButton(emit);
          if (value != userNewPassword.text) {
            emit(ForgetPasswordState.userConfirmNewPassword(context
                .translate(AppStrings.confirmPasswordNotEqualNewPassword)));
          } else {
            emit(const ForgetPasswordState.userConfirmNewPassword(''));
          }
        },
        userForgetPasswordOTP: (value) {
          code = value;
          validateVerifyCodeButton(emit);
          emit(ForgetPasswordState.otpVerifyCode(code));
        },
      );
    });
  }

  // Validate continue forget password button
  void validateForgetPasswordButton(Emitter<ForgetPasswordState> emit) {
    isContinueForgetPasswordButtonValid =
        AppRegex.isEmailValid(userForgetPasswordEmailAddress.text);
    emit(ForgetPasswordState.userForgetButtonValidator(
        isContinueForgetPasswordButtonValid));
  }

  // Validate verify code button
  void validateVerifyCodeButton(Emitter<ForgetPasswordState> emit) {
    isVerifyCodeButtonValid = (code?.isNotEmpty ?? false);
    emit(ForgetPasswordState.verifyButtonValidator(isVerifyCodeButtonValid));
  }

  // Validate new password button
  void validateNewPasswordButton(Emitter<ForgetPasswordState> emit) {
    isCreateNewPasswordButtonValid =
        AppRegex.isPasswordValid(userNewPassword.text) &&
            AppRegex.isPasswordValid(userConfirmNewPassword.text);
    emit(ForgetPasswordState.createNewPasswordValidator(
        isCreateNewPasswordButtonValid));
  }

  // Handle forget password continue button action
  Future<void> continueForgetPassword(
      ForgetPasswordEvent event, Emitter<ForgetPasswordState> emit) async {
    await event.whenOrNull(
      userForgetPasswordButton: () async {
        emit(const ForgetPasswordState.loading());
        final response = await _forgetPasswordRepository.forgetPassword(
          ForgetPasswordRequestBody(
              email: userForgetPasswordEmailAddress.text.trim()),
        );

        response.when(
          success: (forgetPasswordResponse) {
            emit(ForgetPasswordState.success(forgetPasswordResponse));
          },
          failure: (error) {
            emit(ForgetPasswordState.error(error));
          },
        );
      },
    );
  }

  // Handle verify code button action
  Future<void> verifyCode(
      ForgetPasswordEvent event, Emitter<ForgetPasswordState> emit) async {
    await event.whenOrNull(
      userForgetPasswordVerifyButton: () async {
        emit(const ForgetPasswordState.verifyCodeLoading());
        final response = await _verifyCodeRepository.verifyCode(
          VerifyCodeRequestBody(restCode: code!.trim()),
        );

        response.when(
          success: (verifyResponse) {
            emit(ForgetPasswordState.verifyCodeSuccess(verifyResponse));
          },
          failure: (error) {
            emit(ForgetPasswordState.verifyCodeError(error));
          },
        );
      },
    );
  }

  // Handle create new password button action
  Future<void> createNewPassword(
      ForgetPasswordEvent event, Emitter<ForgetPasswordState> emit) async {
    await event.whenOrNull(
      userForgetNewPasswordButton: () async {
        emit(const ForgetPasswordState.newPasswordLoading());
        final response = await _newPasswordRepository.newPassword(
          NewPasswordRequestBody(
            email: userForgetPasswordEmailAddress.text.trim(),
            newPassword: userNewPassword.text.trim(),
            passwordConfirm: userConfirmNewPassword.text.trim(),
          ),
        );

        response.when(
          success: (newPasswordResponse) async {
            emit(ForgetPasswordState.newPasswordSuccess(newPasswordResponse));
          },
          failure: (error) {
            emit(ForgetPasswordState.newPasswordError(error));
          },
        );
      },
    );
  }
}
