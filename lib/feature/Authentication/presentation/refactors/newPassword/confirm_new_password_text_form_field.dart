import '../../../../../../core/common/shared/shared_imports.dart'; // Importing necessary shared packages and utilities

/// A StatelessWidget for confirming the new password.
///
/// This widget includes a password input field with validation and
/// functionality to toggle password visibility. It interacts with
/// the `ForgetPasswordBloc` to handle user input and state changes.
class ConfirmNewPasswordTextFormField extends StatelessWidget {
  const ConfirmNewPasswordTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
      builder: (context, state) {
        return TextFormField(
          // Updates the confirm password in the Bloc whenever the text changes
          onChanged: (value) => context
              .read<ForgetPasswordBloc>()
              .add(UserConfirmForgetNewPasswordEvent(value)),

          // Define the action for the "Done" button on the keyboard
          textInputAction: TextInputAction.done,

          // Specify that this field is for entering a password
          keyboardType: TextInputType.visiblePassword,

          // Use the Bloc's controller to manage the text input
          controller: context.read<ForgetPasswordBloc>().userConfirmNewPassword,

          // Determine whether to obscure the password text (for security)
          obscureText:
              context.read<ForgetPasswordBloc>().showConfirmNewPassword,

          // Configure the decoration for the input field
          decoration: InputDecoration(
            // Lock icon as a prefix for the password field
            prefixIcon: Icon(
              IconlyBroken.lock,
              size: responsive.setIconSize(5.5),
            ),

            // Icon button to toggle password visibility
            suffixIcon: IconButton(
              onPressed: () {
                // Trigger an event to toggle the visibility of the confirm password field
                context
                    .read<ForgetPasswordBloc>()
                    .add(const UserShowConfirmForgetNewPasswordEvent());
              },
              // Change icon based on password visibility state
              icon: context.read<ForgetPasswordBloc>().showConfirmNewPassword
                  ? Icon(
                      IconlyBroken.show, // Icon to indicate visible text
                      size: responsive.setIconSize(6),
                    )
                  : Icon(
                      IconlyBroken.hide, // Icon to indicate hidden text
                      size: responsive.setIconSize(6),
                    ),
            ),

            // Placeholder text for the password field
            hintText:  context.translate(AppStrings.enterConfirmNewPassword) ,

            // Display error text if validation fails
            errorText: state.whenOrNull(
              userConfirmNewPassword: (value) {
                return value.isNotEmpty ? value : null;
              },
            ),
          ),
        );
      },
    );
  }
}
