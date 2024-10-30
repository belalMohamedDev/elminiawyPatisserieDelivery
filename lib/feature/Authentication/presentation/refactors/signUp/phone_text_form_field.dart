import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// A custom widget for the phone number input field in the sign-up form.
/// It includes a country code picker for selecting the country code and
/// uses [SignUpBloc] to manage the phone number input state.
class PhoneTextFormField extends StatelessWidget {
  const PhoneTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextFormField(
          // Update the phone number in the SignUpBloc when the user types
          onChanged: (value) {
            context.read<SignUpBloc>().add(UserSignUpPhoneEvent(value));
          },
          textInputAction:
              TextInputAction.done, // Complete the form with "Done"
          keyboardType: TextInputType.phone, // Phone number input type
          controller: context
              .read<SignUpBloc>()
              .userSignUpPhone, // Controller for phone input

          autofillHints: const [
            AutofillHints.telephoneNumber
          ], // Autofill for phone numbers

          // Input field decoration with prefix icon (Country Code Picker)
          decoration: InputDecoration(
            prefixIcon: CountryCodePicker(
              showFlagMain: false, // Hides the flag icon in the main field
              // Update the country code when changed
              onChanged: (value) {
                context.read<SignUpBloc>().countryCode = value.code!;
              },
              textStyle: TextStyle(
                  color:
                      ColorManger.black26), // Style for the country code text
              initialSelection: '+20', // Default country code selection (Egypt)
              favorite: const [
                '+20',
                '+39',
                'FR',
                '+966'
              ], // Frequently used country codes
              dialogTextStyle: TextStyle(fontSize: responsive.setTextSize(3.5)),
              flagWidth: responsive.setWidth(8), // Responsive flag width
              flagDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    responsive.setBorderRadius(1)), // Border styling for flags
              ),

              dialogBackgroundColor: ColorManger
                  .white, // Background color for the country picker dialog
              closeIcon: Icon(
                Icons.close_rounded,
                color: ColorManger
                    .black54, // Close icon for the country picker dialog
              ),
              showDropDownButton:
                  true, // Show a dropdown button to select the country code
            ),
            hintText: context.translate(AppStrings
                .enterPhoneNumber), // Placeholder for the phone input field

            // Display error text if phone input is invalid
            errorText: state.whenOrNull(
              userSignUpPhone: (value) {
                return value.isNotEmpty ? value : null; // Show error if invalid
              },
            ),
          ),
        );
      },
    );
  }
}
