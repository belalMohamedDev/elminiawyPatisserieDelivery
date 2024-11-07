
import 'package:driver/feature/Authentication/logic/completeRgistrationProcess/complete_registration_process_cubit.dart';

import '../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

class LoadingButtonContent extends StatelessWidget {
  const LoadingButtonContent({
    super.key,
    required this.state,
    this.defaultText,
    this.defultWidget,
  });

  final dynamic state;
  final String? defaultText;
  final Widget? defultWidget;

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);

    Widget loadingWidget({bool signWithGoogleOrApple = false}) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: responsive.setHeight(2),
            width: responsive.setWidth(4),
            child: CircularProgressIndicator(
              color:
                  signWithGoogleOrApple ? ColorManger.brun : ColorManger.white,
              strokeWidth: 2.0,
              strokeAlign: 0.01,
            ),
          ),
          SizedBox(width: responsive.setHeight(2)),
          Text(
            context.translate(AppStrings.loading),
            style: signWithGoogleOrApple
                ? Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: responsive.setTextSize(3.8),
                    )
                : Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontSize: responsive.setTextSize(3.8),
                    ),
          ),
        ],
      );
    }

    if (state is LoginButtonLoadingData ||
        state is SignUpButtonLoadingData ||
        state is ForgetPasswordLoadingData ||
        state is VerifyCodeLoadingData ||
        state is CompleteRegisterLoading ||
        state is NewPasswordLoadingData) {
      return loadingWidget();
    } else {
      return defultWidget ??
          Text(
            context.translate(defaultText!),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontSize: responsive.setTextSize(3.8),
                ),
          );
    }
  }
}
