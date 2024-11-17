import 'package:driver/feature/Authentication/logic/CompleteRgistrationProcess/complete_registration_process_cubit.dart';
import 'package:driver/feature/Authentication/presentation/screens/complete_sign_up_screen.dart';

import '../../../../core/common/shared/shared_imports.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => instance<LoginBloc>(),
              ),
            ],
            child: const LoginView(),
          ),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );

      case Routes.notification:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => instance<UserNotificationCubit>(),
            child: const NotificationScreen(),
          ),
        );
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => instance<LogOutCubit>(),
              ),
              BlocProvider(
                create: (context) => instance<ChangeUserDeliveryImageCubit>(),
              ),
              BlocProvider.value(
                value: instance<MapCubit>(),
              ),
            ],
            child: const ProfileView(),
          ),
        );

      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => instance<SignUpBloc>(),
              ),
              BlocProvider.value(
                value: instance<CompleteRegistrationProcessCubit>(),
              ),
            ],
            child: const SignUpView(),
          ),
        );

      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: instance<ForgetPasswordBloc>(),
            child: const ForgetPasswordScreen(),
          ),
        );

      case Routes.verificationCodeViewRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: instance<ForgetPasswordBloc>(),
            child: const VerificationCodeView(),
          ),
        );

      case Routes.newPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: instance<ForgetPasswordBloc>(),
            child: const NewPasswordView(),
          ),
        );

      case Routes.completeRegister:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: instance<CompleteRegistrationProcessCubit>(),
            child: const DeliveryManRegistration(),
          ),
        );

      case Routes.accountInfomation:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => instance<AccountInformationCubit>(),
              ),
            ],
            child: const AccountInfomation(),
          ),
        );

      case Routes.changeMyEmail:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => instance<ChangeEmailAddressCubit>(),
            child: const ChangeEmailScreen(),
          ),
        );
      case Routes.changeMyPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => instance<ChangeMyPasswordCubit>(),
            child: const ChangePasswordScreen(),
          ),
        );

      case Routes.bottomNavBarRoute:
        return MaterialPageRoute(
          builder: (_) => const BottomNavBar(),
        );

      case Routes.noRoute:
        return MaterialPageRoute(builder: (_) => const RouteStatesScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text(context.translate(AppStrings.noRouteFound)),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(context.translate(AppStrings.noRouteFound)),
          ),
        ),
      ),
    );
  }
}
