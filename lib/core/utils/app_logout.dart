import '../../../../../core/common/shared/shared_imports.dart'; //

class AppLogout {
  factory AppLogout() {
    return _instance;
  }

  AppLogout._();

  static final AppLogout _instance = AppLogout._();

  Future<void> logOutThenNavigateToLogin() async {
    final context = instance<GlobalKey<NavigatorState>>().currentState!.context;
    await SharedPrefHelper.clearAllSecuredData();
    SharedPrefHelper.setData(PrefKeys.prefsKeyAnonymousUser, false);
    SharedPrefHelper.removeData(PrefKeys.enLocationArea);
    SharedPrefHelper.removeData(PrefKeys.arLocationArea);
    SharedPrefHelper.removeData(PrefKeys.longAddressHome);
    SharedPrefHelper.removeData(PrefKeys.latAddressHome);

    context.read<AppLogicCubit>().bottomNavBarController.jumpToTab(0);

    if (!context.mounted) return;
    await context.pushNamedAndRemoveUntil(Routes.loginRoute);
  }
}


