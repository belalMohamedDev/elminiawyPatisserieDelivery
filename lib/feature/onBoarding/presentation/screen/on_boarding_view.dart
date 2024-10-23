import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

/// The [OnBoardingView] is the main entry screen for onboarding.
/// It provides a responsive UI layout and ensures that the system status bar styling is consistent.
/// This view is the first screen users see when they launch the onboarding process.
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      body: Padding(
        // Dynamically apply padding based on the screen size using the responsive utility
        padding: responsive.setPadding(left: 5, top: 8.8, right: 5),

        // SingleChildScrollView allows the content to be scrollable in case it overflows
        child: SingleChildScrollView(
          child: Column(
            // Align the children of the column in the center horizontally
            crossAxisAlignment: CrossAxisAlignment.center,

            // Center the content vertically
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              // Container for the onboarding image
              SizedBox(
                // Set the width to 90% of the screen width for responsiveness
                width: responsive.screenWidth,

                // Set the height to 48% of the screen height to make it responsive across devices
                height: responsive.screenHeight * 0.51,

                // Display the onboarding image from assets
                child: Image.asset(
                  ImageAsset.onBoarding, // Path to the onboarding image asset

                  // Fit the image inside the container without cropping it
                  fit: BoxFit.contain,
                ),
              ),

              // Add vertical space between the image and the title/headline text
              SizedBox(
                height: responsive
                    .setHeight(6), // Dynamic height based on screen size
              ),

              // Display the title and headline text for the onboarding
              const TitleAndHeadLineText(),

              // Add space between the title/headline text and the "Get Started" button
              SizedBox(
                height: responsive
                    .setHeight(3), // Dynamic height based on screen size
              ),

              // Button that lets the user start the onboarding process (e.g., navigate to the next screen)
              const GetStartedButton(),

              // Add vertical space between the button and the "Already have an account?" text
              SizedBox(
                height: responsive
                    .setHeight(2), // Dynamic height based on screen size
              ),

         
            ],
          ),
        ),
      ), // Body content for the onboarding screen
    );
  }
}
