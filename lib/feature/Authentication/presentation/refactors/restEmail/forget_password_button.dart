import '../../../../../core/common/shared/shared_imports.dart'; // Import necessary packages and utilities

/// A StatelessWidget representing the Forget Password button.
///
/// This button triggers the password reset process when pressed.
class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
 
    return BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
      listener: (context, state) {
        // Handle different states of the ForgetPasswordBloc
        state.whenOrNull(
          error: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
          success: (data) {
            // Show success toast and navigate to verification code view on success
            ShowToast.showToastSuccessTop(
                message: data.message!, context: context);
            context.pushReplacementNamed(Routes.verificationCodeViewRoute);
          },
        );
      },
      builder: (context, state) {
        return CustomButton(
          // Button is enabled only if the validation condition is met
          onPressed: context
                  .read<ForgetPasswordBloc>()
                  .isContinueForgetPasswordButtonValid
              ? () {
                  // Dispatch event to start the password reset process
                  context
                      .read<ForgetPasswordBloc>()
                      .add(const UserForgetPasswordButtonEvent());
                }
              : null,
          widget: 
          LoadingButtonContent(
            defaultText: AppStrings.continueText,
            state: state,
          ),
          
    
        );
      },
    );
  }
}
