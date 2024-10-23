import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class PickLocationButton extends StatelessWidget {
  const PickLocationButton({
    super.key,
    required this.isUpdateMap,
    required this.mapCubit,
    required this.mapState,
    required this.isHomeMap,
  });

  final bool isUpdateMap;
  final MapCubit mapCubit;
  final MapState mapState;
  final bool isHomeMap;

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);
    return Positioned(
      bottom: responsive.setHeight(4),
      left: responsive.setWidth(5),
      right: responsive.setWidth(5),
      child: CustomButton(
        onPressed: () async {
          if (mapCubit.checkLocationAvailableResponse != null) {
            if (mapCubit.checkLocationAvailableResponse!
                        .storeAddressAvailable ==
                    true &&
                mapCubit.checkLocationAvailableResponse!.isAddressAvailable ==
                    true) {
              bool loginMap =
                  SharedPrefHelper.getBool(PrefKeys.prefsSetLoginMap);
              if (isUpdateMap == true) {
                mapCubit.moveToLocation(
                    position: mapCubit.targetPosition,
                    controller: mapCubit.newAddressMapController);
                Navigator.pop(context);
              } else if (isHomeMap == true) {
                await SharedPrefHelper.setSecuredString(PrefKeys.enLocationArea,
                    mapCubit.checkLocationAvailableResponse!.englishAddress!);
                await SharedPrefHelper.setSecuredString(PrefKeys.arLocationArea,
                    mapCubit.checkLocationAvailableResponse!.arabicAddress!);
                await SharedPrefHelper.setData(
                    PrefKeys.latAddressHome, mapCubit.targetPosition.latitude);
                await SharedPrefHelper.setData(PrefKeys.longAddressHome,
                    mapCubit.targetPosition.longitude);

                mapCubit.setLocationToHome();
                Navigator.pop(context);
              } else if (loginMap == true) {
                await SharedPrefHelper.setSecuredString(PrefKeys.enLocationArea,
                    mapCubit.checkLocationAvailableResponse!.englishAddress!);
                await SharedPrefHelper.setSecuredString(PrefKeys.arLocationArea,
                    mapCubit.checkLocationAvailableResponse!.arabicAddress!);

                await SharedPrefHelper.setData(
                    PrefKeys.latAddressHome, mapCubit.targetPosition.latitude);
                await SharedPrefHelper.setData(PrefKeys.longAddressHome,
                    mapCubit.targetPosition.longitude);

                await SharedPrefHelper.setData(
                    PrefKeys.prefsSetLoginMap, false);

                // mapCubit.setLocationToHome();
                context.pushNamedAndRemoveUntil(Routes.bottomNavBarRoute);
              } else {
                // Use the context only if the widget is still mounted.

                Navigator.popAndPushNamed(
                  context,
                  Routes.addNewAddress,
                );
              }
            }
          }
        },
        widget: mapState is CheckAddressAvailableLoading
            ? SizedBox(
                height: responsive.setHeight(3),
                width: responsive.setWidth(6),
                child: CircularProgressIndicator(
                  color: ColorManger.white, // Indicator color
                  strokeWidth: 2.5, // Line thickness of the indicator
                  strokeAlign: 0.01, // Alignment of the stroke (indicator line)
                ),
              )
            : Text(
                mapCubit.checkLocationAvailableResponse != null
                    ? mapCubit.checkLocationAvailableResponse!
                                    .storeAddressAvailable ==
                                true &&
                            mapCubit.checkLocationAvailableResponse!
                                    .isAddressAvailable ==
                                true
                        ? context.translate(AppStrings.pickLocation)
                        : mapCubit.checkLocationAvailableResponse!
                                    .isAddressAvailable ==
                                false
                            ? context
                                .translate(AppStrings.addressNotFoundInThisArea)
                            : context.translate(
                                AppStrings.serviceNotAvailableInThisArea)
                    : context.translate(AppStrings.enterCompleteAddress),
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: responsive.setTextSize(3.8),
                    ),
              ),
      ),
    );
  }
}
