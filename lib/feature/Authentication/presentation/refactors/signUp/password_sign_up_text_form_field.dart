import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// A custom widget for the password input field in the sign-up form.
/// It uses [SignUpBloc] to manage the password state, including showing or hiding the password.
class PasswordSignUpTextFormField extends StatelessWidget {
  const PasswordSignUpTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextFormField(
          // Update the password in the SignUpBloc when the user types
          onChanged: (value) {
            context.read<SignUpBloc>().add(UserSignUpPasswordEvent(value));
          },
          textInputAction:
              TextInputAction.next, // Move to the next field on enter
          keyboardType: TextInputType
              .visiblePassword, // Ensure the keyboard is set for password input
          controller: context
              .read<SignUpBloc>()
              .userSignUpPassword, // Controller to manage the password input

          // Toggle password visibility using obscureText
          obscureText: context.read<SignUpBloc>().showPass,

          autofillHints: const [
            AutofillHints.password
          ], // Autofill suggestion for password

          // Input field decoration with prefix and suffix icons
          decoration: InputDecoration(
            prefixIcon: Icon(
              IconlyBroken.lock, // Lock icon to indicate password field
              size: responsive
                  .setIconSize(5), // Adjust icon size for responsiveness
            ),
            suffixIcon: IconButton(
              // Toggle the visibility of the password
              onPressed: () {
                context
                    .read<SignUpBloc>()
                    .add(const UserShowSignUpPasswordEvent());
              },
              icon: context.read<SignUpBloc>().showPass
                  ? Icon(
                      IconlyBroken
                          .show, // Icon indicating the password is visible
                      size: responsive.setIconSize(6.5),
                    )
                  : Icon(
                      IconlyBroken
                          .hide, // Icon indicating the password is hidden
                      size: responsive.setIconSize(6.5),
                    ),
            ),
            hintText:   context.translate(AppStrings.enterYourPassword) 
                , // Placeholder text for the password input field

            // Display error text if the password input is invalid
            errorText: state.whenOrNull(
              userSignUpPassword: (value) {
                return value.isNotEmpty ? value : null; // Show error if invalid
              },
            ),
          ),
        );
      },
    );
  }
}
