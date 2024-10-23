import '../../../../../core/common/shared/shared_imports.dart'; // Importing shared utilities and dependencies

/// A StatelessWidget that represents the button for creating a new password.
///
/// This button interacts with the `ForgetPasswordBloc` to handle the submission of the
/// new password. It also displays a loading spinner when the new password is being created,
/// and shows success or error toasts based on the result of the operation.
class NewPasswordButton extends StatelessWidget {
  const NewPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments

    return BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
      listener: (context, state) {
        // Listen for password change events and handle success or error outcomes
        state.whenOrNull(
          // Show error toast if the new password operation fails
          newPasswordError: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
          // Show success toast and navigate to the map screen when successful
          newPasswordSuccess: (authResponse) {
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
      builder: (context, state) {
        return CustomButton(
          // Enable or disable the button based on form validation
          onPressed:
              context.read<ForgetPasswordBloc>().isCreateNewPasswordButtonValid
                  ? () {
                      context
                          .read<ForgetPasswordBloc>()
                          .add(const UserForgetNewPasswordButtonEvent());
                    }
                  : null,
          // Display a loading indicator or the button label based on the current state
          widget: LoadingButtonContent(
            defaultText: AppStrings.createNewPassword,
            state: state,
          ),
        );
      },
    );
  }
}
