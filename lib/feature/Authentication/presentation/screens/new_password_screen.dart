
import '../../../../../core/common/shared/shared_imports.dart'; // Import shared dependencies for the project

/// A view for setting a new password in the password reset process.
///
/// This screen allows the user to enter a new password and confirm it.
/// The design is responsive, meaning the layout adjusts based on the screen size
/// using the `ResponsiveUtils` utility class for handling padding, font size, and spacing.
class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to manage responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      appBar: AppBar(), // Basic app bar with default back button
      body: Padding(
        // Padding around the main content to maintain consistent spacing across different screen sizes
        padding: responsive.setPadding(
            left: 5,
            right: 5,
            top: 12), // Padding on the left, right, and top of the content
        child: SingleChildScrollView(
          // Allows the content to scroll in case of overflow on smaller screens
          child: Column(
            children: [
              /// Title: New Password
              ///
              /// Displays a title that indicates the user is setting a new password.
              Text(
                context.translate(AppStrings.newPassword),
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: responsive.setTextSize(4.5)),
              ),

              /// Spacing between the title and description text.
              SizedBox(
                height: responsive.setHeight(2),
              ),

              /// Description Text
              ///
              /// Provides instructions to the user, stating that their new password
              /// should be different from the previous one.
              Text(
                context.translate(AppStrings.youNewPasswordMustBeDifferent),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: responsive.setTextSize(3.5)),
                textAlign: TextAlign.center,
              ),

              /// Spacing between the description and the new password input field.
              SizedBox(
                height: responsive.setHeight(6),
              ),

              /// New Password Input Field
              ///
              /// TextFormField widget for the user to input their new password.
              /// It's a reusable component defined elsewhere in the codebase.
              const NewPasswordTextFormField(),

              /// Spacing between the new password and confirm new password fields.
              SizedBox(
                height: responsive.setHeight(2),
              ),

              /// Confirm New Password Input Field
              ///
              /// TextFormField for the user to re-enter their new password to confirm it.
              const ConfirmNewPasswordTextFormField(),

              /// Spacing between the confirm password field and the submit button.
              SizedBox(
                height: responsive.setHeight(4),
              ),

              /// Submit Button
              ///
              /// A button that, when pressed, submits the new password form.
              /// It's a reusable component (NewPasswordButton) defined elsewhere in the project.
              const NewPasswordButton(),
            ],
          ),
        ),
      ),
    );
  }
}
