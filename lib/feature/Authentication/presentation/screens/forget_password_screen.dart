import '../../../../../core/common/shared/shared_imports.dart'; // Importing necessary packages and utilities

/// A screen that allows users to enter their email address
/// to initiate the password recovery process.
///
/// The user will receive a verification code to reset their password.
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Responsible for responsive layout adjustments based on screen size
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      appBar: AppBar(), // Standard app bar for screen navigation
      body: Padding(
        // Provides consistent padding around the content
        padding: responsive.setPadding(left: 5, right: 5, top: 15),
        child: SingleChildScrollView(
          // Ensures the content is scrollable for smaller screens

          child: Column(
            children: [
              Text(
                context.translate(AppStrings.restYourPassword),
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                height: responsive.setHeight(2),
              ),
              Text(
                context.translate(AppStrings.enterYourEmailToSendVerifyCode),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: responsive.setTextSize(3.5)),
                textAlign:
                    TextAlign.center, // Center-aligns the description text
              ),
              SizedBox(
                height: responsive.setHeight(7),
              ),
              const EmailForgetPasswordTextFormField(),
              SizedBox(
                height: responsive.setHeight(4),
              ),
              const ForgetPasswordButton(),
              SizedBox(
                height: responsive.setHeight(4),
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    // Navigates to the login route
                    context.pushReplacementNamed(Routes.loginRoute);
                    // Clears the email address field from the ForgetPasswordBloc
                    context
                        .read<ForgetPasswordBloc>()
                        .userForgetPasswordEmailAddress
                        .clear();
                  },
                  child: Text(
                    context.translate(AppStrings.backToLogin),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: responsive.setTextSize(4)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
