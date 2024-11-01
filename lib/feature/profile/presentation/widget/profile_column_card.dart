import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

BlocBuilder profileColumnCard(BuildContext context) {
  return BlocBuilder<LogOutCubit, LogOutState>(
    builder: (context, state) {
      return Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                CustomProfileCard(
                  title: context.translate(AppStrings.accountInformation),
                  leadingIcon: IconlyBold.infoCircle,
                  tap: () {
                    context.pushNamed(Routes.accountInfomation);
                  },
                ),
                CustomProfileCard(
                  title: context.translate(AppStrings.changeEmailAddress),
                  leadingIcon: IconlyBold.message,
                  tap: () {
                    context.pushNamed(Routes.changeMyEmail);
                  },
                ),
                CustomProfileCard(
                  title: context.translate(AppStrings.changePassword),
                  leadingIcon: IconlyBold.lock,
                  tap: () {
                    context.pushNamed(Routes.changeMyPassword);
                  },
                ),
                CustomProfileCard(
                  title: context.translate(AppStrings.settings),
                  leadingIcon: IconlyBold.setting,
                  tap: () {
                    settingChangeBottomSheet(context);
                 
                  },
                ),
                logoutLogic(context)
              ],
            ),
          ),
          if (state is LogOutLoading)
            Container(
                height: 70.h,
                width: 70.w,
                decoration: BoxDecoration(
                    color: ColorManger.brun,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.r),
                    child: CircularProgressIndicator(
                      color: ColorManger.white,
                      strokeWidth: 3.sp,
                    ),
                  ),
                )),
        ],
      );
    },
  );
}
