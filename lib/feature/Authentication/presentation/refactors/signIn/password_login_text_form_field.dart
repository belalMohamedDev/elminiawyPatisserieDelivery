import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// The [PasswordLoginTextFormField] widget is a form field for inputting the user's password.
/// It integrates with the [LoginBloc] to manage the state of the form and control the display
/// of the password (show/hide).
///
/// This widget includes:
/// - A password input field with show/hide functionality
/// - Form validation and autofill hints
/// - Dynamic icon sizing for responsiveness
class PasswordLoginTextFormField extends StatelessWidget {
  const PasswordLoginTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<LoginBloc, LoginState>(
      // Listen to the LoginBloc to update the UI based on the current state
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) {
            // When the user changes the text, update the LoginBloc with the new password
            context.read<LoginBloc>().add(UserLoginPassword(value));
          },
          textInputAction: TextInputAction
              .next, // Moves to the next field when "next" is pressed
          keyboardType: TextInputType
              .visiblePassword, // Specifies that this is a password field
          controller: context
              .read<LoginBloc>()
              .userLoginPassword, // The controller for managing input
          obscureText: context
              .read<LoginBloc>()
              .showPass, // Toggles between showing/hiding password
          autofillHints: const [
            AutofillHints.password, // Autofill hint for password
          ],
          decoration: InputDecoration(
            // Prefix icon (lock icon) for password input
            prefixIcon: Icon(
              IconlyBroken.lock, // Lock icon to represent the password field
              size: responsive.setIconSize(
                  5.5), // Set size dynamically based on screen size
            ),
            // Suffix icon to toggle password visibility (show/hide)
            suffixIcon: IconButton(
              onPressed: () {
                // Toggle the password visibility in the bloc
                context.read<LoginBloc>().add(const UserShowLoginPassword());
              },
              icon: context.read<LoginBloc>().showPass
                  ? Icon(
                      IconlyBroken.show, // Show password icon
                      size: responsive
                          .setIconSize(6.5), // Set icon size dynamically
                    )
                  : Icon(
                      IconlyBroken.hide, // Hide password icon
                      size: responsive
                          .setIconSize(6.5), // Set icon size dynamically
                    ),
            ),
            hintText:  context.translate(AppStrings
                .enterYourPassword) , // Hint text for the password field
            // Show validation errors if any, based on the state of the bloc
            errorText: state.whenOrNull(
              userLoginPassword: (value) {
                return value.isNotEmpty
                    ? value
                    : null; // If error exists, display it
              },
            ),
          ),
        );
      },
    );
  }
}
