import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// A StatelessWidget for handling user input of the verification code in the password reset process.
///
/// This widget utilizes the `VerificationCode` widget, which displays input fields for the user to enter
/// the 6-digit verification code, and interacts with the `ForgetPasswordBloc` to handle OTP submission.
class VerifyCodeTextFormField extends StatelessWidget {
  const VerifyCodeTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ResponsiveUtils for responsive layout adjustments
    final responsive = ResponsiveUtils(context);
    return VerificationCode(
      textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: responsive.setTextSize(3), // Responsive font size
          ),
      keyboardType: TextInputType.text,
      underlineColor: ColorManger.primary,
      fullBorder: true, // Enabling full border for each input item
      margin: const EdgeInsets.all(2), // Margin between input fields
      length: 6, // Length of the verification code
      itemSize:
          responsive.setIconSize(10), // Responsive size of each input field
      cursorColor:
          ColorManger.primary, // Cursor color to match the primary theme
      // Called when the user completes entering the verification code
      onCompleted: (String value) {
        context
            .read<ForgetPasswordBloc>()
            .add(UserForgetPasswordOTPButtonEvent(value));
      },
      // Optional: Handle input editing state (if needed)
      onEditing: (bool isEditing) {},
    );
  }
}
