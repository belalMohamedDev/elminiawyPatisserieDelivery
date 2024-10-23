import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class RegionAreaWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final int index;
  const RegionAreaWidget({
    super.key,
    required this.imagePath,
    required this.index,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    bool regionAreaIndex =
        context.read<UserAddressCubit>().regionAreaIndex == index;
    return Container(
      height: 32.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: regionAreaIndex ? ColorManger.brun : null,
        borderRadius: BorderRadius.circular(8.r),
        border: regionAreaIndex
            ? null
            : Border.all(
                color: ColorManger.brownLight,
                width: 0.5.w,
              ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            color: regionAreaIndex ? ColorManger.white : null,
            height: 14.h,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontFamily: FontConsistent.geLocalozedFontFamily(),
                  color: regionAreaIndex ? ColorManger.white : null,
                  fontSize: 12.sp)),
        ],
      ),
    );
  }
}
