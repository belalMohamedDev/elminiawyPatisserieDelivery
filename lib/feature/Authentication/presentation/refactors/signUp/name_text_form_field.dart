import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// A custom widget that displays two [TextFormField] widgets side by side
/// for inputting the first name and last name. It uses the [SignUpBloc]
/// to manage state and handle user input.
class NameTextFormField extends StatelessWidget {
  const NameTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Row(
          children: [
            // Expanded widget for first name input
            Expanded(
              child: TextFormField(
                // Update the first name in the SignUpBloc when the user types
                onChanged: (value) {
                  context
                      .read<SignUpBloc>()
                      .add(UserSignUFirstNameEvent(value));
                },
                textInputAction:
                    TextInputAction.next, // Move to the next field on enter
                autofillHints: const [
                  AutofillHints.name
                ], // Autofill suggestion for first name
                keyboardType:
                    TextInputType.text, // Keyboard type for entering text
                controller: context
                    .read<SignUpBloc>()
                    .userSignUpFirstName, // Controller to manage the input
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    IconlyBroken.addUser, // Icon for the input field
                    size:
                        responsive.setIconSize(5), // Dynamically set icon size
                  ),
                  hintText:  context.translate(AppStrings.firstNameExample)   
                      , // Placeholder text for first name
                  errorText: state.whenOrNull(
                    // Display error text if validation fails for first name
                    userSignUpFirstName: (value) {
                      return value.isNotEmpty ? value : null;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
                width: responsive
                    .setWidth(3)), // Space between first and last name fields

            // Expanded widget for last name input
            Expanded(
              child: TextFormField(
                // Update the last name in the SignUpBloc when the user types
                onChanged: (value) {
                  context
                      .read<SignUpBloc>()
                      .add(UserSignUpLastNameEvent(value));
                },
                autofillHints: const [
                  AutofillHints.familyName
                ], // Autofill suggestion for last name
                textInputAction:
                    TextInputAction.next, // Move to the next field on enter
                keyboardType:
                    TextInputType.text, // Keyboard type for entering text
                controller: context
                    .read<SignUpBloc>()
                    .userSignUpLastName, // Controller to manage the input
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    IconlyBroken.addUser, // Icon for the input field
                    size:
                        responsive.setIconSize(5), // Dynamically set icon size
                  ),
                  hintText: context.translate(AppStrings.lastNameExample) 
                      , // Placeholder text for last name
                  errorText: state.whenOrNull(
                    // Display error text if validation fails for last name
                    userSignUpLastName: (value) {
                      return value.isNotEmpty ? value : null;
                    },
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
