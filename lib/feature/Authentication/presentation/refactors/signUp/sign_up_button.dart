import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// A custom sign-up button widget that triggers the user registration process.
/// It handles different states such as loading, success, and error using BlocConsumer.
class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        // Handle different state changes such as error and success
        state.whenOrNull(
          // Show error message when state contains an error
          error: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
          // On successful registration, show success message and navigate to home
          suceess: (authResponse) {
            if (authResponse.data!.role == "delivery") {
              // Show a success toast when login is successful
              ShowToast.showToastSuccessTop(
                  message: authResponse.message!, context: context);
              // Navigate to the map screen after a successful login
              AppLogin().storeData(authResponse);
              SharedPrefHelper.setData(PrefKeys.prefsCompleteRgister, true);
              context.pushNamedAndRemoveUntil(Routes.completeRegister);
            } else {
              ShowToast.showToastErrorTop(
                  errorMessage: context
                      .translate(AppStrings.thisAccountNotAccessInThisApp),
                  context: context);
            }
          },
        );
      },
      builder: (context, state) {
        return CustomButton(
          // Enable the button only if the sign-up form is valid
          onPressed: context.read<SignUpBloc>().isButtonInVaildator
              ? () {
                  // Trigger user registration event when the button is pressed
                  context
                      .read<SignUpBloc>()
                      .add(const UserRegisterButtonEvent());
                }
              : null, // Disable button if form is invalid

          // Change button appearance based on loading state
          widget: LoadingButtonContent(
            defaultText: AppStrings.signUp,
            state: state,
          ),
        );
      },
    );
  }
}
