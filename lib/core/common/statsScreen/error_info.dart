import '../../../../core/common/shared/shared_imports.dart'; // Import the shared imports barrel file

/// ErrorInfo widget is used to display an error or information message
/// with an optional button for user interaction.
class ErrorInfo extends StatelessWidget {
  const ErrorInfo({
    super.key,
    required this.title, // The title text to display
    required this.description, // The description text for the error or message
    this.button, // Optional custom button widget
    this.btnText, // Optional text for the default button
    this.press, // Callback function for the button press action
  });

  // Title and description for the error or information message
  final String title;
  final String description;

  // Optional properties for button and its behavior
  final Widget? button; // Custom button widget (if provided)
  final String? btnText; // Text for the default button
  final VoidCallback? press; // Action to trigger when the button is pressed

  @override
  Widget build(BuildContext context) {
    // Initialize ResponsiveUtils for layout and size adjustments based on screen size
    final responsive = ResponsiveUtils(context);

    return Center(
      child: Container(
        // Set the maximum width for the content to ensure responsiveness
        constraints: BoxConstraints(maxWidth: responsive.setWidth(90)),
        alignment: Alignment.center,

        // Column to vertically arrange the title, description, and optional button
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center items horizontally
          mainAxisAlignment:
              MainAxisAlignment.center, // Center items vertically
          children: [
            // Display the title of the error or info message
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge, // Use large title style from theme
            ),

            // Add space between the title and description
            const SizedBox(height: 16),

            // Display the description text for the error or message
            Text(
              description,
              textAlign: TextAlign.center, // Center-align the text
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: responsive
                      .setTextSize(4)), // Adjust font size responsively
            ),

            // Add more space before the button
            const SizedBox(height: 16 * 2.5),

            // Conditionally show the button if btnText is provided, otherwise show nothing
            btnText == null
                ? const SizedBox() // No button if btnText is null
                : button ?? // If a custom button widget is provided, use it
                    ElevatedButton(
                      // Otherwise, use the default button with the retry action
                      onPressed: press, // Action to perform on button press
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity,
                              50), // Make button full width and 50 height
                          backgroundColor: ColorManger
                              .primary, // Set button color to primary color
                          foregroundColor:
                              ColorManger.white, // Set text color to white
                          shape: const RoundedRectangleBorder(
                              // Rounded corners for the button
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))),
                      child: Text(btnText ??
                            context.translate(AppStrings.retry)  
                              ), // Default to "Retry" if btnText is null
                    ),

            // Add space after the button
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
