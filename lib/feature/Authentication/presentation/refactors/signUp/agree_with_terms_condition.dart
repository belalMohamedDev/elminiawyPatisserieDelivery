import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

/// A widget for agreeing to terms and conditions in the sign-up form.
/// It uses a [Checkbox] for user interaction and Bloc state management to
/// track whether the user has agreed to the terms.
class AgreeWithTermsCondition extends StatelessWidget {
  const AgreeWithTermsCondition({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Row(
          children: [
            // Checkbox for agreeing with terms and conditions
            Checkbox(
              value: context.read<SignUpBloc>().agreeWithTerms, // Bloc state
              onChanged: (bool? value) {
                // Dispatch event when the checkbox is checked/unchecked
                context
                    .read<SignUpBloc>()
                    .add(UserSignUpAgreeWithEvent(value!));
              },

              activeColor:
                  ColorManger.brunLight, // Set the active color of the checkbox

              // Customize the border of the checkbox when inactive
              side: WidgetStateBorderSide.resolveWith(
                (states) => BorderSide(
                  width: responsive.setWidth(0.3), // Responsive border width
                  color: ColorManger.brunLight, // Border color when unchecked
                ),
              ),

              // Apply rounded borders to the checkbox
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(responsive.setBorderRadius(1)),
              ),
            ),
            // Text describing the terms and conditions with underline
            Text.rich(
              TextSpan(
                text: context.translate(
                    AppStrings.agreeWith), // Base text: "I agree with"
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize:
                        responsive.setTextSize(3.5)), // Responsive text size
                children: [
                  // Add a small space between the base text and the terms
                  WidgetSpan(
                    child: SizedBox(
                      width: responsive.setWidth(0.5),
                    ),
                  ),
                  // Link-like text for "Terms and Conditions"
                  TextSpan(
                    text: context.translate(AppStrings.termsCondition),
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          decoration: TextDecoration
                              .underline, // Underline "Terms and Conditions"
                          fontSize: responsive
                              .setTextSize(3.5), // Responsive text size
                        ),
                  ),
                ],
              ),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        );
      },
    );
  }
}
