import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<AppLogicCubit, AppLogicState>(
      builder: (context, state) {
        return PersistentTabView(
          avoidBottomPadding: false,
          stateManagement: false,

          controller: context.read<AppLogicCubit>().bottomNavBarController,

          margin: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 12.h),

          backgroundColor: ColorManger.brun,

          tabs: _navBarsItems(responsive),

          navBarBuilder: (navBarConfig) => Style8BottomNavBar(
            navBarConfig: navBarConfig,
            itemAnimationProperties: const ItemAnimation(
              //   // Screen transition animation on change of selected tab.

              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarDecoration: NavBarDecoration(
              color: ColorManger.backgroundItem,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)),
            ),
          ), // Choose the nav bar style with this property.
        );
      },
    );
  }

  List<PersistentTabConfig> _navBarsItems(ResponsiveUtils responsive) {
    return [
      PersistentTabConfig(
        screen: const HomeScreen(),
        item: ItemConfig(
          icon: Icon(IconlyBold.home, size: 20.sp),
          inactiveIcon: Icon(IconlyBroken.home, size: 20.sp),
          title: (context.translate(AppStrings.home)),
          textStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: responsive.setTextSize(3.5)),
          activeForegroundColor: ColorManger.brun,
          inactiveForegroundColor: ColorManger.brun,
        ),
      ),
      PersistentTabConfig(
        screen: BlocProvider(
          create: (context) => instance<UserNotificationCubit>(),
          child: const NotificationScreen(),
        ),
        item: ItemConfig(
          icon: Icon(IconlyBold.notification, size: 20.sp),
          inactiveIcon: Icon(IconlyBroken.notification, size: 20.sp),
          title: (context.translate(AppStrings.notification)),
          textStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: responsive.setTextSize(3.5)),
          activeForegroundColor: ColorManger.brun,
          inactiveForegroundColor: ColorManger.brun,
        ),
      ),
      PersistentTabConfig(
        screen: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => instance<LogOutCubit>(),
            ),
            BlocProvider(
              create: (context) => instance<ChangeUserDeliveryImageCubit>(),
            ),
            BlocProvider(
              create: (context) => instance<MapCubit>(),
            ),
          ],
          child: const ProfileView(),
        ),
        item: ItemConfig(
          icon: Icon(IconlyBold.setting, size: 20.sp),
          inactiveIcon: Icon(IconlyBroken.setting, size: 20.sp),
          title: (context.translate(AppStrings.profile)),
          textStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: responsive.setTextSize(3.5)),
          activeForegroundColor: ColorManger.brun,
          inactiveForegroundColor: ColorManger.brun,
        ),
      ),
    ];
  }
}
