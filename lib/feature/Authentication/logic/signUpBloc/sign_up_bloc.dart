import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

/// The `SignUpBloc` class handles all the logic and state management for the sign-up process.
/// It manages user inputs (email, password, etc.), validates the input data, and triggers user registration.
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  // Controllers to manage form input fields
  final TextEditingController userSignUpEmailAddress = TextEditingController();
  final TextEditingController userSignUpPassword = TextEditingController();
  final TextEditingController userSignUpFirstName = TextEditingController();
  final TextEditingController userSignUpLastName = TextEditingController();
  final TextEditingController userSignUpPhone = TextEditingController();
  final ImagePicker _imagePicker;

  final context = instance<GlobalKey<NavigatorState>>().currentState!.context;
  // Repository for handling the registration process
  final AuthenticationRepositoryImplement _registerRepository;
  dynamic image = '';
  File newImage = File('');

  // UI-related flags
  bool showPass = true; // Toggles the visibility of the password field
  bool agreeWithTerms = true; // Tracks the user's agreement with terms
  String countryCode = "+20"; // Default country code for phone numbers
  bool isButtonInVaildator =
      false; // Validates whether the sign-up button is enabled

  final signUpFormKey = GlobalKey<FormState>(); // Form key for validation

  /// Constructor initializes the repository and adds event listeners
  SignUpBloc(this._registerRepository, this._imagePicker)
      : super(const _Initial()) {
    // Register button press event
    on<UserRegisterButtonEvent>(registerButton);

    // General event handler
    on<SignUpEvent>((event, emit) async {
      if (event is UserSignUFirstNameEvent) {
        registerButtonValidator(event, emit);
        if (!AppRegex.isNameValid(event.value)) {
          emit(SignUpState.userSignUpFirstName(
              context.translate(AppStrings.pleaseEnterValidFirstName)));
        } else {
          emit(const SignUpState.userSignUpFirstName(""));
        }
      }

      if (event is UserSignUpLastNameEvent) {
        registerButtonValidator(event, emit);
        if (!AppRegex.isNameValid(event.value)) {
          emit(SignUpState.userSignUpLastName(
              context.translate(AppStrings.pleaseEnterValidLastName)));
        } else {
          emit(const SignUpState.userSignUpLastName(""));
        }
      }

      if (event is UserSignUpPhoneEvent) {
        registerButtonValidator(event, emit);
        if (!AppRegex.isPhoneNumberValid(event.value)) {
          emit(SignUpState.userSignUpPhone(
              context.translate(AppStrings.pleaseEnterValidPhoneNumber)));
        } else {
          emit(const SignUpState.userSignUpPhone(""));
        }
      }

      if (event is UserSignUpEmailAddressEvent) {
        registerButtonValidator(event, emit);
        if (!AppRegex.isEmailValid(event.value)) {
          emit(SignUpState.userSignUpEmailAddress(
              context.translate(AppStrings.pleaseEnterValidEmail)));
        } else {
          emit(const SignUpState.userSignUpEmailAddress(""));
        }
      }

      if (event is UserSignUpPasswordEvent) {
        registerButtonValidator(event, emit);

        final passwordErrors = AppRegex.passwordValidation(event.value);

        if (passwordErrors.isNotEmpty) {
          final errorMessages =
              _buildPasswordErrorMessage(passwordErrors, context);

          emit(SignUpState.userSignUpPassword(errorMessages));
        } else {
          emit(const SignUpState.userSignUpPassword(""));
        }
      }

      if (event is UserShowSignUpPasswordEvent) {
        // Toggle password visibility
        showPass = !showPass;
        emit(SignUpState.showUserSignUpPassword(showPass));
      }

      if (event is UserSignUpAgreeWithEvent) {
        registerButtonValidator(event, emit);
        // Toggle agreement with terms and conditions
        agreeWithTerms = !agreeWithTerms;
        emit(SignUpState.signUpAgreeWith(agreeWithTerms));
      }

      if (event is CameraImagePickEvent) {
        await camera(emit);
      }

      if (event is GalleryImagePickEvent) {
        await gallery(emit);
      }
    });
  }

  String _buildPasswordErrorMessage(
      Map<String, bool> passwordErrors, BuildContext context) {
    List<String> errors = [];

    if (passwordErrors.containsKey('hasMinLength')) {
      errors.add(context.translate(AppStrings.passwordMinLength));
    }
    if (passwordErrors.containsKey('hasLowerCase')) {
      errors.add(context.translate(AppStrings.passwordLowerCase));
    }
    if (passwordErrors.containsKey('hasUpperCase')) {
      errors.add(context.translate(AppStrings.passwordUpperCase));
    }
    if (passwordErrors.containsKey('hasDigit')) {
      errors.add(context.translate(AppStrings.passwordDigit));
    }
    if (passwordErrors.containsKey('hasSpecialCharacter')) {
      errors.add(context.translate(AppStrings.passwordSpecialCharacter));
    }

    return errors.join('\n');
  }

  /////image picker
  Future<void> camera(Emitter<SignUpState> emit) async {
    final pickedImage =
        await _imagePicker.pickImage(source: ImageSource.camera);
    await setUserPicture(File(pickedImage?.path ?? ''));
    emit(
      SignUpState.imagePath(File(pickedImage?.path ?? '')),
    );
  }

  Future<void> gallery(Emitter<SignUpState> emit) async {
    final pickedImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    await setUserPicture(File(pickedImage?.path ?? ''));
    emit(
      SignUpState.imagePath(File(pickedImage?.path ?? '')),
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

  ////////////////////////////////////////
  // Register Button Validation
  ////////////////////////////////////////

  /// Validates if the sign-up button should be enabled based on the input fields.
  Future<void> registerButtonValidator(
      SignUpEvent event, Emitter<SignUpState> emit) async {
    // Checks if all input fields have valid values
    if (!AppRegex.isNameValid(userSignUpFirstName.text) ||
        !AppRegex.isNameValid(userSignUpLastName.text) ||
        !AppRegex.isEmailValid(userSignUpEmailAddress.text) ||
        !AppRegex.isPasswordValid(userSignUpPassword.text) ||
        !AppRegex.isPhoneNumberValid(userSignUpPhone.text)) {
      // Disable the button if validation fails
      isButtonInVaildator = false;
    } else {
      // Enable the button if all fields are valid
      isButtonInVaildator = true;
    }
    // Emit the button validation state
    emit(SignUpState.buttonSignUpVaildation(isButtonInVaildator));
  }

  ////////////////////////////////////////
  // Register Button Logic
  ////////////////////////////////////////

  /// Handles the registration process when the user clicks the sign-up button.
  Future<void> registerButton(
      SignUpEvent event, Emitter<SignUpState> emit) async {
    await event.whenOrNull(
      userRegisterButton: () async {
        // Emit loading state
        emit(const SignUpState.loading());

        // Call the repository to handle user registration
        final response = await _registerRepository.registerToNewAccountRepo(
          RegisterRequestBody(
            name:
                '${userSignUpFirstName.text.trim()} ${userSignUpLastName.text.trim()}',
            phone: userSignUpPhone.text.trim(),
            email: userSignUpEmailAddress.text.trim(),
            password: userSignUpPassword.text.trim(),
          ),
        );

        // Handle the response from the registration API
        response.when(
          success: (registerResponse) async {
            // Emit success state
            emit(SignUpState.suceess(registerResponse));
          },
          failure: (error) {
            // Emit error state in case of failure
            emit(SignUpState.error(error));
          },
        );
      },
    );
  }
}
