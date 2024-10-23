import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// A StatelessWidget representing the text form field for entering a new password.
///
/// This field interacts with the `ForgetPasswordBloc` to handle user input for the new password.
/// It also provides the ability to toggle password visibility (show/hide).
class NewPasswordTextFormField extends StatelessWidget {
  const NewPasswordTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils for responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
      builder: (context, state) {
        return TextFormField(
          // Handle text input changes and dispatch events to update the bloc
          onChanged: (value) => context
              .read<ForgetPasswordBloc>()
              .add(UserForgetNewPasswordEvent(value)),
          textInputAction:
              TextInputAction.next, // Move to the next input field on submit
          keyboardType: TextInputType.visiblePassword,
          controller: context.read<ForgetPasswordBloc>().userNewPassword,
          obscureText: context
              .read<ForgetPasswordBloc>()
              .showNewPassword, // Toggle password visibility

          // Input decoration with prefix and suffix icons, hint text, and error handling
          decoration: InputDecoration(
            prefixIcon: Icon(
              IconlyBroken.lock, // Password lock icon
              size: responsive.setIconSize(5.5),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                // Toggle password visibility when the suffix icon is pressed
                context
                    .read<ForgetPasswordBloc>()
                    .add(const UserShowForgetNewPasswordEvent());
              },
              icon: context.read<ForgetPasswordBloc>().showNewPassword
                  ? Icon(
                      IconlyBroken.show, // Show password icon
                      size: responsive.setIconSize(6),
                    )
                  : Icon(
                      IconlyBroken.hide, // Hide password icon
                      size: responsive.setIconSize(6),
                    ),
            ),
            hintText:
               context.translate(
                AppStrings.enterNewPassword)  , // Placeholder text for the field
            errorText: state.whenOrNull(
              userNewPassword: (value) {
                // Display error message if the password field is invalid
                return value.isNotEmpty ? value : null;
              },
            ),
          ),
        );
      },
    );
  }
}
