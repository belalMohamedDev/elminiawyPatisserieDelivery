import '../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// The [OrSignInWithText] widget is used to display a divider with the text
/// "Or sign in with" between two horizontal lines. It is commonly used to
/// visually separate the primary sign-in method (e.g., email) from alternative
/// sign-in options (e.g., social media).
///
/// This widget includes:
/// - Two dividers (horizontal lines) on either side of the text.
/// - The "Or sign in with" text in the center of the row.
class OrSignWithText extends StatelessWidget {
  const OrSignWithText(
      {super.key, this.orSignWithText = AppStrings.orSignInWith});
  final String orSignWithText;

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Row(
      children: [
        // Left divider: occupies the available horizontal space before the text
        Expanded(
          child: Divider(
            height: responsive.setHeight(2), // Height of the divider
            indent: 40, // Space from the left edge
            endIndent: 5, // Space before the text
            color: ColorManger
                .black26, // Color of the divider (semi-transparent black)
          ),
        ),
        // Center text: "Or sign in with" text between the dividers
        Text(
          context.translate(orSignWithText),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: responsive.setTextSize(3.5)), // Responsive text size
        ),
        // Right divider: occupies the available horizontal space after the text
        Expanded(
          child: Divider(
            height: responsive.setHeight(2), // Height of the divider
            indent: 5, // Space after the text
            endIndent: 40, // Space from the right edge
            color: ColorManger
                .black26, // Color of the divider (semi-transparent black)
          ),
        ),
      ],
    );
  }
}
