import '../../../../../../core/common/shared/shared_imports.dart'; // Import barrel file for shared utilities

/// [EmailLoginTextFormField] is a widget that provides a form field for users
/// to input their email address during login. It uses BlocBuilder to listen
/// to changes in the login state and updates the input field accordingly.
class EmailLoginTextFormField extends StatelessWidget {
  const EmailLoginTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextFormField(
          // Capture the email input and trigger the event to update the bloc's state
     
          onChanged: (value) =>
              context.read<LoginBloc>().add(UserLoginEmailAddress(value)),
          textInputAction:
              TextInputAction.next, // Move to the next field when done
          keyboardType:
              TextInputType.emailAddress, // Email input type for keyboard
          controller: context
              .read<LoginBloc>()
              .userLoginEmailAddress, // Email controller from the bloc

          // Enable autofill hints for better UX
          autofillHints: const [
            AutofillHints.email,
          ],

          // Input decoration including the prefix icon and error handling
          decoration: InputDecoration(
            prefixIcon: Icon(
              IconlyBroken.message, // Email icon
              size:
                  responsive.setIconSize(5.5), // Adjust icon size responsively
            ),
            hintText:
                context.translate(AppStrings
                .emailExample)  , // Placeholder text for the email field

            // Show error message if the state contains an invalid email
            errorText: state.whenOrNull(
              userLoginEmailAddress: (value) {
                return value.isNotEmpty ? value : null;
              },
            ),
          ),
        );
      },
    );
  }
}

