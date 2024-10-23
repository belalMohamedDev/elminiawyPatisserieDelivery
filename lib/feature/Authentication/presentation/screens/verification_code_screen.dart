
import '../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// A widget for verifying the code entered by the user after a password reset.
/// It uses [ForgetPasswordBloc] for state management and controls events
/// such as entering the code, resending the code, and navigating back to login.
class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      appBar: AppBar(), // AppBar for the verification screen
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: responsive.setPadding(
                left: 5, right: 5, top: 15), // Set padding for the content
            child: Column(
              children: [
                // Title for verifying the code
                Text(
                context.translate(AppStrings.verifyCode)  ,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  height: responsive
                      .setHeight(2), // Space between title and description
                ),
                // Instruction for the user to enter the code
                Text(
                     context.translate(AppStrings.pleaseEnterTheCode)  ,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: responsive.setTextSize(3.8)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: responsive
                      .setHeight(2), // Space before displaying the email
                ),
                // Display the user's email for reference
                Text(
                  context
                      .read<ForgetPasswordBloc>()
                      .userForgetPasswordEmailAddress
                      .text,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: responsive.setTextSize(3.8)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height:
                      responsive.setHeight(4), // Space before the input field
                ),
                const VerifyCodeTextFormField(), // Input field for the verification code
                SizedBox(
                  height: responsive
                      .setHeight(4), // Space before the OTP resend message
                ),
                // Message indicating the user did not receive the OTP
                Text(
                   context.translate(AppStrings.didntRecieveotp)   ,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: responsive.setTextSize(4)),
                ),
                SizedBox(
                  height:
                      responsive.setHeight(2), // Space before the resend button
                ),
                // Button to resend the code
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      context
                          .read<ForgetPasswordBloc>()
                          .add(const UserForgetPasswordButtonEvent());
                    },
                    child: Text(
                         context.translate(AppStrings.resendCode) ,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: responsive.setTextSize(3.8)),
                    ),
                  ),
                ),
                SizedBox(
                  height:
                      responsive.setHeight(2), // Space before the verify button
                ),
                const VerificationCodeButton(), // Button to submit the verification code
                SizedBox(
                  height: responsive
                      .setHeight(4), // Space before the back to login link
                ),
                // Button to navigate back to the login screen
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      context.pushReplacementNamed(Routes.loginRoute);
                      context
                          .read<ForgetPasswordBloc>()
                          .userForgetPasswordEmailAddress
                          .clear();
                    },
                    child: Text(
                    context.translate(AppStrings.backToLogin)  ,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: responsive.setTextSize(4)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
