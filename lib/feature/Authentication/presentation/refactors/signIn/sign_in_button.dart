import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// The [SignInButton] widget represents the primary button for initiating the login process.
/// It integrates with the [LoginBloc] to manage user interaction and state feedback such as
/// showing loading indicators, handling success and error responses, and triggering navigation.
///
/// This widget includes:
/// - A custom button that responds to user input
/// - A loading state with a progress indicator
/// - Success and error handlers through BlocConsumer
class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      // Listener to respond to state changes such as success or error events
      listener: (context, state) {
        state.whenOrNull(
          error: (apiErrorModel) {
            // Show an error toast when login fails
            ShowToast.showToastErrorTop(
                errorMessage: apiErrorModel.message!, context: context);
          },
          suceess: (authResponse) {
            if (authResponse.data!.role == "user") {
              // Show a success toast when login is successful
              ShowToast.showToastSuccessTop(
                  message: authResponse.message!, context: context);
              // Navigate to the map screen after a successful login
              AppLogin().storeDataThenNavigateToMap(authResponse);
            } else {
              ShowToast.showToastErrorTop(
                  errorMessage: context
                      .translate(AppStrings.thisAccountNotAccessInThisApp),
                  context: context);
            }
          },
        );
      },
      // Builder to display the button UI based on the current state
      builder: (context, state) {
        return CustomButton(
          // Enable the button only if the input validator passes (from LoginBloc)
          onPressed: context.read<LoginBloc>().isButtonInVaildator
              ? () {
                  // Trigger the login button event in the LoginBloc
                  context.read<LoginBloc>().add(const UserLoginButton());
                }
              : null, // If validation fails, the button is disabled
          widget: LoadingButtonContent(
            defaultText: AppStrings.signIn,
            state: state,
         
          ),
        );
      },
    );
  }
}
