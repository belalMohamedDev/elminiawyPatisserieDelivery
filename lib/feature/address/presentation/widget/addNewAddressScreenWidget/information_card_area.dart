import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class InformationCardArea extends StatelessWidget {
  const InformationCardArea({
    super.key,
    required this.getAddressResponseData,
  });

  final GetAddressResponseData? getAddressResponseData;

  @override
  Widget build(BuildContext context) {
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        final mapCuibt = context.read<MapCubit>();
        String regionAddress = '';

        if (mapCuibt.checkLocationAvailableResponse != null &&
            mapCuibt.checkLocationAvailableResponse!.englishAddress != null) {
          regionAddress = isEnLocale
              ? mapCuibt.checkLocationAvailableResponse!.englishAddress!
              : mapCuibt.checkLocationAvailableResponse!.arabicAddress!;
        } else if (getAddressResponseData != null &&
            getAddressResponseData!.region != null) {
          regionAddress = getAddressResponseData!.region!;
        } else {
          regionAddress = context.translate(AppStrings.unknownRegion);
        }

        return Card(
          elevation: 1.8,
          shadowColor: ColorManger.brownLight,
          child: Container(
            height: 55.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: ColorManger.white,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: isEnLocale ? 12.w : 0.w,
                        right: isEnLocale ? 0 : 12.w,
                        top: 12.h,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            IconlyBold.location,
                            size: 18.sp,
                            color: ColorManger.brun,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(context.translate(AppStrings.area),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontSize: 12.sp)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: isEnLocale ? 20.w : 0,
                          right: isEnLocale ? 0 : 20.w,
                          top: 5.h),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 220.w),
                        child: Text(regionAddress,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontSize: 10.sp)),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      right: isEnLocale ? 20.w : 0,
                      left: isEnLocale ? 0.w : 20,
                      top: 2.h),
                  child: InkWell(
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider.value(
                            value: instance<MapCubit>(),
                            child: const MapScreen(
                              isUpdateMap: true,
                            ),
                          ),
                        ),
                      );
                    },
                    child: Text(context.translate(AppStrings.change),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 13.sp)),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
