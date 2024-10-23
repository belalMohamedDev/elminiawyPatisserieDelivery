import '../../../../../../core/common/shared/shared_imports.dart'; // Import necessary packages and utilities

/// A StatelessWidget for the email input field in the Forget Password Screen.
///
/// This widget displays a text field for users to enter their email address
/// to receive a verification code for resetting their password.
class EmailForgetPasswordTextFormField extends StatelessWidget {
  const EmailForgetPasswordTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
      builder: (context, state) {
        return TextFormField(
          // Called when the value changes
          onChanged: (value) {
            context
                .read<ForgetPasswordBloc>()
                .add(UserForgetPasswordEmailAddressEvent(value));
          },
          textInputAction:
              TextInputAction.next, // Move to the next input on enter
          keyboardType:
              TextInputType.emailAddress, // Set keyboard type to email

          // Validator to check if the entered email is valid
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return context.translate(AppStrings
                  .isEmailValid); // Return error message if validation fails
            }
            return null; // Return null if validation passes
          },
          // Controller for managing the text input
          controller:
              context.read<ForgetPasswordBloc>().userForgetPasswordEmailAddress,
          decoration: InputDecoration(
            // Prefix icon for the input field
            prefixIcon: Icon(
              IconlyBroken.message,
              size: 18.sp, // Size of the icon
            ),
            hintText: context.translate(
                AppStrings.emailExample), // Hint text for the input field
            // Error text to display validation errors
            errorText: state.whenOrNull(
              userForgetEmailAddress: (value) {
                return value.isNotEmpty ? value : null; // Show error if present
              },
            ),
          ),
        );
      },
    );
  }
}
