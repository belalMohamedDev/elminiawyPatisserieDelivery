
import '../../../../../core/common/shared/shared_imports.dart'; //


class CheckOutProcessing extends StatelessWidget {
  final int screenIndex;
  const CheckOutProcessing({
    super.key,
    required this.screenIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManger.backgroundItem,
          borderRadius: BorderRadius.circular(5.r)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: ColorManger.brun,
            maxRadius: 12.r,
            child: Text(
            context.translate(AppStrings.one)   ,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontFamily: FontConsistent.fontFamilyAcme,
                  color: ColorManger.white,
                  fontSize: 12.sp),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Text(
          context.translate(AppStrings.shipping)  ,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontFamily: FontConsistent.fontFamilyAcme,
                color: ColorManger.brun,
                fontSize: 13.sp),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorManger.brun,
                width: 2.w,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: screenIndex == 2 || screenIndex == 3
                  ? ColorManger.brun
                  : ColorManger.white,
              maxRadius: 10.r,
              child: Text(
             context.translate(AppStrings.two)   ,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontFamily: FontConsistent.fontFamilyAcme,
                    color: screenIndex == 2 || screenIndex == 3
                        ? ColorManger.white
                        : ColorManger.brun,
                    fontSize: 12.sp),
              ),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Text(
           context.translate(AppStrings.payment) ,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontFamily: FontConsistent.fontFamilyAcme,
                color: ColorManger.brun,
                fontSize: 13.sp),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorManger.brun,
                width: 2.w,
              ),
            ),
            child: CircleAvatar(
              backgroundColor:
                  screenIndex == 3 ? ColorManger.brun : ColorManger.white,
              maxRadius: 10.r,
              child: Text(
              context.translate(AppStrings.three)  ,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontFamily: FontConsistent.fontFamilyAcme,
                    color:
                        screenIndex == 3 ? ColorManger.white : ColorManger.brun,
                    fontSize: 12.sp),
              ),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Text(
           context.translate(AppStrings.review)  ,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontFamily: FontConsistent.fontFamilyAcme,
                color: ColorManger.brun,
                fontSize: 13.sp),
          ),
        ],
      ),
    );
  }
}
