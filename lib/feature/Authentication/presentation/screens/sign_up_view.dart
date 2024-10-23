import '../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// The [SignUpView] is a stateless widget that displays the user interface
/// for signing up. It includes fields for entering name, email, password,
/// phone number, and agreeing to the terms and conditions.
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      appBar: AppBar(), // Standard app bar
      resizeToAvoidBottomInset:
          true, // Avoid bottom overflow when keyboard is up
      bottomNavigationBar: SizedBox(
        height: responsive
            .setHeight(8), // Dynamically set height for the bottom bar
        child: const Center(
          child: HaveAnAccountText(
            signUpText: true,
          ), // Text prompting the user to log in if they already have an account
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: responsive.setPadding(
            left: 5.5,
            right: 5,
          ),
          child: Form(
            key: context
                .read<SignUpBloc>()
                .signUpFormKey, // Retrieve the form key from the SignUpBloc
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Display the "Create Account" title
                const HeadlineTextAuthScreen(
                  titleText: AppStrings.createAccount,
                  subTitleText: AppStrings.fillYouInformation,
                ),

                SizedBox(
                  height: responsive.setHeight(5),
                ),

                const ProfileImage(),

                SizedBox(
                  height: responsive.setHeight(3),
                ),

                // Input field for the user's name
                const NameTextFormField(),
                SizedBox(
                  height: responsive.setHeight(1),
                ),
                // Input field for the user's email
                const EmailSignUpTextFormField(),
                SizedBox(
                  height: responsive.setHeight(1),
                ),
                // Input field for the user's password
                const PasswordSignUpTextFormField(),
                SizedBox(
                  height: responsive.setHeight(1),
                ),
                // Input field for the user's phone number
                const PhoneTextFormField(),
                SizedBox(
                  height: responsive.setHeight(3),
                ),
                // Checkbox for agreeing with terms and conditions

                // Sign-up button
                const SignUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
