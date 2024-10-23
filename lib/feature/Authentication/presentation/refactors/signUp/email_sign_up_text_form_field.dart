import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// A custom widget for the email input field in the sign-up form.
/// It uses [SignUpBloc] to handle state management and listens for changes in the user's email input.
class EmailSignUpTextFormField extends StatelessWidget {
  const EmailSignUpTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextFormField(
          // Update the email address in the SignUpBloc when the user types
          onChanged: (value) {
            context.read<SignUpBloc>().add(UserSignUpEmailAddressEvent(value));
          },
          textInputAction:
              TextInputAction.next, // Move to the next field on enter
          keyboardType:
              TextInputType.emailAddress, // Keyboard optimized for email input
          autofillHints: const [
            AutofillHints.email
          ], // Autofill suggestion for email
          controller: context
              .read<SignUpBloc>()
              .userSignUpEmailAddress, // Controller to manage the email input

          // Input field decoration with icon and hint text
          decoration: InputDecoration(
            prefixIcon: Icon(
              IconlyBroken.message, // Icon to indicate the email field
              size: responsive.setIconSize(
                  5), // Dynamically set icon size based on screen size
            ),
            hintText:   context.translate(AppStrings.emailExample) 
                , // Placeholder text for the email input field

            // Display error text if the email input is invalid
            errorText: state.whenOrNull(
              userSignUpEmailAddress: (value) {
                return value.isNotEmpty
                    ? value
                    : null; // Show error if not valid
              },
            ),
          ),
        );
      },
    );
  }
}
