import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// A StatelessWidget representing the verification button for the password reset process.
///
/// This button interacts with the `ForgetPasswordBloc` to handle the submission of the verification code.
/// It displays a loading indicator while processing and shows appropriate success or error messages.
class VerificationCodeButton extends StatelessWidget {
  const VerificationCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          // Handle errors during the verification process
          verifyCodeError: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
          // Handle successful verification
          verifyCodeSuccess: (data) {
            ShowToast.showToastSuccessTop(
              message: data.message!,
              context: context,
            );
            // Navigate to the new password screen on success
            context.pushReplacementNamed(Routes.newPassword);
          },
          // Handle generic errors
          error: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
          // Handle generic success
          success: (data) {
            ShowToast.showToastSuccessTop(
              message: data.message!,
              context: context,
            );
          },
        );
      },
      builder: (context, state) {
        return CustomButton(
          // Button is enabled only if the validation condition is met
          onPressed: context.read<ForgetPasswordBloc>().isVerifyCodeButtonValid
              ? () {
                  context.read<ForgetPasswordBloc>().add(
                        const UserForgetPasswordVerifyButtonEvent(),
                      );
                }
              : null,
          widget: LoadingButtonContent(
            defaultText: AppStrings.verify,
            state: state,
          ),
        );
      },
    );
  }
}
