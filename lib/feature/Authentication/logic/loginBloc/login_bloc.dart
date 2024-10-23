import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

/// The [LoginBloc] handles the login logic for the application.
///
/// It manages the login process, including validating user input,
/// triggering login requests, and emitting various login states.
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  // Controllers for the user email and password fields
  final TextEditingController userLoginEmailAddress = TextEditingController();
  final TextEditingController userLoginPassword = TextEditingController();
  final context = instance<GlobalKey<NavigatorState>>().currentState!.context;
  // Global key for the login form
  final loginFormKey = GlobalKey<FormState>();

  // Repository for handling login-related requests
  final AuthenticationRepositoryImplement _loginRepository;

  // Flags for password visibility and button validation state
  bool showPass = true;
  bool isButtonInVaildator = false;

  /// Constructs a [LoginBloc] with the provided [LoginRepository].
  LoginBloc(this._loginRepository) : super(const _Initial()) {
    // Event handlers
    on<UserLoginButton>(loginButton);

    // Handles various login events
    on<LoginEvent>((event, emit) async {
      if (event is UserLoginEmailAddress) {
        await _validateLoginButton(event, emit);

        // Validate email format
        if (!AppRegex.isEmailValid(event.value)) {
          emit(LoginState.userLoginEmailAddress(
              context.translate(AppStrings.pleaseEnterValidEmail)));
        } else {
          emit(const LoginState.userLoginEmailAddress(""));
        }
      }

      if (event is UserLoginPassword) {
        await _validateLoginButton(event, emit);

        // Validate password format
        if (!AppRegex.isPasswordValid(event.value)) {
          emit( LoginState.userLoginPassword(
           context.translate(AppStrings.pleaseEnterValidPassword) ));
        }
      }

      if (event is UserShowLoginPassword) {
        // Toggle password visibility
        showPass = !showPass;
        emit(LoginState.showUserPassword(showPass));
      }
    });
  }

  /// Validates the login button's enabled state based on user input.
  Future<void> _validateLoginButton(
      LoginEvent event, Emitter<LoginState> emit) async {
    // Check if email and password are valid
    if (!AppRegex.isPasswordValid(userLoginPassword.text) ||
        !AppRegex.isEmailValid(userLoginEmailAddress.text)) {
      isButtonInVaildator = false;
    } else {
      isButtonInVaildator = true;
    }

    // Emit the validation state
    emit(LoginState.buttonLoginVaildation(isButtonInVaildator));
  }

  /// Handles the login button press event.
  Future<void> loginButton(LoginEvent event, Emitter<LoginState> emit) async {
    await event.whenOrNull(
      userLoginButton: () async {
        emit(const LoginState.loading());

        // Attempt to log in the user
        final response = await _loginRepository.loginRepo(
          LoginRequestBody(
            email: userLoginEmailAddress.text.trim(),
            password: userLoginPassword.text.trim(),
          ),
        );

        // Handle the login response
        response.when(
          success: (loginResponse) async {
            emit(LoginState.suceess(loginResponse));
          },
          failure: (error) {
            // Emit error state with error details

            emit(
              LoginState.error(error),
            );
          },
        );
      },
    );
  }
}
