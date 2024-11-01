import '../../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (apiErrorModel) {
            ShowToast.showToastErrorTop(
                errorMessage: apiErrorModel.message!, context: context);
          },
          suceess: (authResponse) async {
            if (authResponse.data!.role == "delivery") {
              if (authResponse.data!.completeData == true) {
                if (authResponse.data!.deliveryActive == true) {
                  ShowToast.showToastSuccessTop(
                      message: authResponse.message!, context: context);
                  AppLogin().storeData(authResponse);

                  await context
                      .pushNamedAndRemoveUntil(Routes.bottomNavBarRoute);
                } else {
                  ShowToast.showToastErrorTop(
                      errorMessage: context
                          .translate(AppStrings.thisAccountIsNotYetActive),
                      context: context);
                }
              } else {
                // Navigate to the map screen after a successful login
                AppLogin().storeData(authResponse);
                SharedPrefHelper.setData(PrefKeys.prefsCompleteRgister, true);
                context.pushNamedAndRemoveUntil(Routes.completeRegister);
              }
            } else {
              ShowToast.showToastErrorTop(
                  errorMessage: context
                      .translate(AppStrings.thisAccountNotAccessInThisApp),
                  context: context);
            }
          },
        );
      },
      builder: (context, state) {
        return CustomButton(
          onPressed: context.read<LoginBloc>().isButtonInVaildator
              ? () {
                  context.read<LoginBloc>().add(const UserLoginButton());
                }
              : null,
          widget: LoadingButtonContent(
            defaultText: AppStrings.signIn,
            state: state,
          ),
        );
      },
    );
  }
}
