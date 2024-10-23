import 'package:driver/core/common/shared/shared_imports.dart';

/// This widget displays an empty notifications screen when there are no notifications available.
class EmptyNotificationsScreen extends StatelessWidget {
  const EmptyNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ResponsiveUtils for responsive layout adjustments, such as size, padding, and spacing.
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      // SafeArea ensures the content is displayed within the safe areas of the screen, avoiding notches and system UI.
      body: SafeArea(
        child: Padding(
          // Applying padding to the entire column for uniform spacing around the content.
          padding: const EdgeInsets.all(16),
          child: Column(
            // Center the widgets vertically within the column.
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container to hold the "no notifications" image with responsive width.
              SizedBox(
                width: responsive.screenWidth *
                    0.8, // Set the image width to 80% of the screen width.
                child: AspectRatio(
                  aspectRatio:
                      1, // Ensures the image has a 1:1 aspect ratio (square).
                  child: SvgPicture.asset(
                    ImageAsset
                        .noNotification, // Loads the SVG image for the empty notifications state.
                    fit: BoxFit
                        .scaleDown, // Scales the image down to fit within the container without distortion.
                  ),
                ),
              ),
              // Adding vertical space between the image and the text content.
              responsive.setSizeBox(height: 2),

              // ErrorInfo widget that displays a title and description for the empty state.
              ErrorInfo(
                title: context.translate(AppStrings
                    .emptyNotifications), // Title indicating no notifications are available.
                description: context.translate(AppStrings
                    .itLooksLikeYouNotifications), // Descriptive message for the empty state.
              ),
            ],
          ),
        ),
      ),
    );
  }
}
