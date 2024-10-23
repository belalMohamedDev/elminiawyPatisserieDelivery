import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

/// The [TitleAndHeadLineText] widget displays the main titles and headlines on the onboarding screen.
/// It consists of two main parts: a welcome title and a sub-headline to guide the user through the onboarding process.
class TitleAndHeadLineText extends StatelessWidget {
  const TitleAndHeadLineText({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Column(
      // Display elements in a vertical layout
      children: [
        // Main title: "Welcome to driver Patisserie"
        Text(context.translate(AppStrings.welcomeTodriver), // Main title text
            textAlign: TextAlign.center, // Align the text in the center
            style: Theme.of(context)
                .textTheme
                .titleLarge // Apply the 'titleLarge' theme style
            ),

        // Add vertical spacing between the title and sub-headline
        SizedBox(
          height: responsive
              .setHeight(2), // Dynamic height spacing based on the screen size
        ),

        // Sub-headline: "Discover Our Wonderful Selection"
        Text(
          context.translate(
              AppStrings.discoverOurWonderfulSelection), // Sub-headline text

          // Apply the 'bodySmall' theme style with an adjusted font size
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: responsive.setTextSize(
                    3.5), // Adjusted font size for better readability
              ),

          textAlign: TextAlign.center, // Center-align the sub-headline text
        ),
      ],
    );
  }
}
