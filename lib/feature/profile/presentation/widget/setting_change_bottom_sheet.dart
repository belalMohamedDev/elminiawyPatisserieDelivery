import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

Future<dynamic> settingChangeBottomSheet(BuildContext context) {
  final cubit = context.read<AppLogicCubit>();

  return showCupertinoModalBottomSheet(
      useRootNavigator: true,
      barrierColor: Colors.black54,
      elevation: 20.r,
      context: context,
      builder: (context) => SizedBox(
            height: 320.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 35.h),
              child: Material(
                color: ColorManger.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ValueListenableBuilder(
                          valueListenable:
                              FirebaseCloudMessaging().isNotificationSubscribe,
                          builder: (_, value, __) {
                            return CustomProfileCard(
                              title: context.translate(AppStrings.notification),
                              actionWidget: Transform.scale(
                                scale: 0.75,
                                child: CupertinoSwitch(
                                  value: value,
                                  activeColor: ColorManger.brun,
                                  trackColor: ColorManger.brunLight,
                                  onChanged: (value) async {
                                    await FirebaseCloudMessaging()
                                        .toggleNotificationSubscription();
                                  },
                                ),
                              ),
                              leadingIcon: IconlyBold.notification,
                              tap: () async {
                                await FirebaseCloudMessaging()
                                    .toggleNotificationSubscription();
                              },
                            );
                          }),
                      CustomProfileCard(
                        title: context.translate(AppStrings.language),
                        subTitle: context.translate(AppStrings.english),
                        leadingIcon: Icons.language,
                        tap: () {
                          if (AppLocalizations.of(context)!.isEnLocale) {
                            cubit.toArabic();
                          } else {
                            cubit.toEnglish();
                          }
                        },
                      ),
                      CustomProfileCard(
                        title: context.translate(AppStrings.activeNow),
                        leadingIcon: IconlyBroken.swap,
                        tap: () {},
                        actionWidget: Transform.scale(
                          scale: 0.75,
                          child: CupertinoSwitch(
                            value: cubit.driverActive,
                            activeColor: ColorManger.brun,
                            trackColor: ColorManger.brunLight,
                            onChanged: (value) {
                              cubit.toggleDriverStatus(value);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ));
}
