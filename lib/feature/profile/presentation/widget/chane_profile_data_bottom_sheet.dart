import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

void chaneProfileDataBottomSheet(BuildContext context) {
  showCupertinoModalBottomSheet(
      useRootNavigator: true,
      barrierColor: Colors.black54,
      elevation: 20.r,
      context: context,
      builder: (context) => SizedBox(
            height: 300.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 35.h),
              child: Material(
                color: ColorManger.white,
                child: Column(
                  children: [
                    CustomProfileCard(
                      title:context.translate(AppStrings.accountInformation) ,
                      leadingIcon: IconlyBold.infoCircle,
                      tap: () {
                        Navigator.of(context, rootNavigator: !false)
                            .pushReplacementNamed(Routes.accountInfomation);
                      },
                    ),
                    CustomProfileCard(
                      title: context.translate(AppStrings.changeEmailAddress) ,
                      leadingIcon: IconlyBold.message,
                      tap: () {
                        Navigator.of(context, rootNavigator: !false)
                            .pushReplacementNamed(Routes.changeMyEmail);
                      },
                    ),
                    CustomProfileCard(
                      title: context.translate(AppStrings.changePassword) ,
                      leadingIcon: IconlyBold.lock,
                      tap: () {
                        Navigator.of(context, rootNavigator: !false)
                            .pushReplacementNamed(Routes.changeMyPassword);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ));
}
