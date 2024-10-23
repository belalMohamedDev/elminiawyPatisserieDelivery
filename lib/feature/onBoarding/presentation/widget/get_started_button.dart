import '../../../../../core/common/shared/shared_imports.dart'; // Import the shared dependencies and utilities

/// The [GetStartedButton] is the main action button on the onboarding screen.
/// This button will trigger navigation to the next screen and store the user's
/// progress in shared preferences (indicating that onboarding has been completed).
///
/// It is a fully responsive button that adjusts its size based on the screen dimensions.
class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return CustomButton(
      // Action to be performed when the button is pressed
      onPressed: () async {
        // Navigate to the login screen and remove all previous routes
        context.pushNamedAndRemoveUntil(Routes.loginRoute);

        // Store user progress in shared preferences to mark onboarding as completed
        await SharedPrefHelper.setData(
            PrefKeys.prefsKeyOnBoardingScreenView, true);
      },
      // The text displayed on the button
      widget: Text(
        context.translate(AppStrings.letsGetStarted),
        // The string displayed in the button (e.g., "Let's Get Started")

        // Style the text using the headlineSmall from the app's theme,
        // and adjust the font size dynamically based on screen size.
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontSize: responsive.setTextSize(
                  4), // Dynamically set the font size for better responsiveness
            ),
      ),
    );
  }
}
