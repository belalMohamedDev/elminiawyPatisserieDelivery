import '../../../../../core/common/shared/shared_imports.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        final searchBloc = context.read<SearchBloc>();

        return Padding(
          padding: EdgeInsets.symmetric(vertical: 50.h),
          child: SizedBox(
            height: 450.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: isEnLocale ? 30.w : 0,
                      right: isEnLocale ? 0 : 30.w,
                      bottom: 15.h),
                  child: Text(
                    context.translate(AppStrings.sortBy),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 18.sp,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          buildListTile(
                            context,
                            context.translate(AppStrings.nameAToZ),
                            1,
                            searchBloc.selectedOption,
                          ),
                          buildListTile(
                            context,
                            context.translate(AppStrings.nameZToA),
                            2,
                            searchBloc.selectedOption,
                          ),
                          buildListTile(
                            context,
                            context.translate(AppStrings.priceLowToHigh),
                            3,
                            searchBloc.selectedOption,
                          ),
                          buildListTile(
                            context,
                            context.translate(AppStrings.priceHighToLow),
                            4,
                            searchBloc.selectedOption,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.h, bottom: 15.h),
                        child: Text(
                          context.translate(AppStrings.priceRange),
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontSize: 18.sp,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, top: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${context.translate(AppStrings.egy)} ${searchBloc.selectedRange.start.toInt()}',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            Text(
                              '${context.translate(AppStrings.egy)} ${searchBloc.selectedRange.end.toInt()}',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      RangeSlider(
                        values: searchBloc.selectedRange,
                        min: 0,
                        max: 2000,
                        activeColor: ColorManger.brun,
                        inactiveColor: ColorManger.brunLight,
                        labels: RangeLabels(
                          "${searchBloc.selectedRange.start.toInt()}",
                          "${searchBloc.selectedRange.end.toInt()}",
                        ),
                        onChanged: (selectedRange) {
                          searchBloc.add(
                              SearchEvent.updateSelectedRange(selectedRange));
                        },
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        widget: Text(
                          context.translate(AppStrings.applyFilter),
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontSize: 14.sp,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget buildListTile(
    BuildContext context, String title, int value, int groupValue) {
  return SizedBox(
    height: 40.h,
    child: ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: TextStyle(fontSize: 14.sp),
      ),
      leading: Radio<int>(
        activeColor: ColorManger.brun,
        value: value,
        groupValue: groupValue,
        onChanged: (selectedOption) {
          context
              .read<SearchBloc>()
              .add(SearchEvent.updateSelectedOption(selectedOption!));
        },
      ),
    ),
  );
}
