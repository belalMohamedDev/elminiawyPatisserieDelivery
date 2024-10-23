import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class CustomProfileCard extends StatelessWidget {
  final String title;
  final String? subTitle;
  final IconData leadingIcon;
  final GestureTapCallback tap;
  final Widget? actionWidget;

  const CustomProfileCard({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.tap,
    this.subTitle,
    this.actionWidget,
  });

  @override
  Widget build(BuildContext context) {
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return Column(
      children: [
        Divider(color: ColorManger.backgroundItem),
        InkWell(
          onTap: tap,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                Icon(
                  leadingIcon,
                  color: ColorManger.brun,
                  size: 16.sp,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 12.sp)),
                const Spacer(),
                Text(subTitle ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 13.sp)),
                SizedBox(
                  width: 7.w,
                ),
                actionWidget == null
                    ? subTitle != null
                        ? const SizedBox()
                        : Icon(
                            isEnLocale
                                ? IconlyBroken.arrowRight2
                                : IconlyBroken.arrowLeft2,
                            color: ColorManger.brun,
                            size: 18.sp,
                          )
                    : actionWidget!,
              ],
            ),
          ),
        ),
        Divider(
          color: ColorManger.backgroundItem,
        ),
      ],
    );
  }
}
