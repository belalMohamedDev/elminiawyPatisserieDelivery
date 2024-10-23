import '../../../../core/common/shared/shared_imports.dart';

class ShippingAddressBody extends StatefulWidget {
  const ShippingAddressBody({super.key});

  @override
  State<ShippingAddressBody> createState() => _ShippingAddressBodyState();
}

class _ShippingAddressBodyState extends State<ShippingAddressBody> {
  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);

    return Padding(
      padding: responsive.setPadding(top: 3, right: 6, left: 6, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CheckOutProcessing(
            screenIndex: 1,
          ),
          responsive.setSizeBox(height: 4),
          _changingAddressText(context, responsive),
          responsive.setSizeBox(height: 4),
          Text(
          context.translate(AppStrings.currentLocation)  ,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: responsive.setTextSize(4)),
          ),
          responsive.setSizeBox(height: 2),
          _mapWidget(context, responsive),
          responsive.setSizeBox(height: 4),
          Text(
         context.translate(AppStrings.shippingAddress)  ,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: responsive.setTextSize(4)),
          ),
          responsive.setSizeBox(height: 2),
          BlocBuilder<PaymentCubit, PaymentState>(
            builder: (context, state) {
              return _shippingAddresssContainer(
                  context: context, isSippingAddressCheckOut: true);
            },
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: !false)
                  .pushNamed(Routes.shippingPayment);
            },
            widget: Text(
            context.translate(AppStrings.saveAndContinue)  ,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: responsive.setTextSize(
                        3.8), // Adjusted font size for responsiveness
                  ),
            ),
          )
        ],
      ),
    );
  }

  Container _shippingAddresssContainer(
      {required BuildContext context,
      bool isChosseAddress = false,
      bool isSelected = false,
      bool isSippingAddressCheckOut = false,
      int index = 0}) {
    final userAddressCubit = context.read<UserAddressCubit>().addressDataList[
        isSippingAddressCheckOut
            ? context.read<PaymentCubit>().selectedIndex
            : index];
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);

    return Container(
      height:
          isSelected ? responsive.setHeight(14.2) : responsive.setHeight(18),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManger.backgroundItem,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2)),
        border: Border.all(
          color: isChosseAddress
              ? ColorManger.backgroundItem
              : ColorManger.backgroundItem,
          width: responsive.setWidth(0.2),
        ),
      ),
      child: Padding(
        padding:
            responsive.setPadding(top: isSelected ? 0 : 1.8, left: 3, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isSelected
                ? const SizedBox()
                : Row(
                    children: [
                      Container(
                          height: responsive.setHeight(4),
                          width: responsive.setWidth(15),
                          decoration: BoxDecoration(
                            color: ColorManger.brun,
                            borderRadius: BorderRadius.circular(
                                responsive.setBorderRadius(1.2)),
                          ),
                          child: Center(
                            child: Text(
                         context.translate(AppStrings.defaultAddress)    ,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                      fontSize: responsive.setTextSize(3)),
                            ),
                          )),
                      const Spacer(),
                      isChosseAddress
                          ? const SizedBox()
                          : InkWell(
                              onTap: () {
                                _chaneProfileDataaBottomSheet(context);
                              },
                              child: Icon(
                                IconlyBold.location,
                                color: ColorManger.brun,
                              ),
                            ),
                      isChosseAddress
                          ? const SizedBox()
                          : responsive.setSizeBox(
                              width: 1,
                            ),
                      isChosseAddress
                          ? const SizedBox()
                          : InkWell(
                              onTap: () {
                                _chaneProfileDataaBottomSheet(context);
                              },
                              child: Text(context.translate(AppStrings.change) ,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        fontSize: responsive.setTextSize(3.8),
                                        decoration: TextDecoration.underline,
                                      )),
                            ),
                    ],
                  ),
            responsive.setSizeBox(
              height: 2,
            ),
            Row(
              children: [
                Icon(
                  IconlyBold.home,
                  color: isChosseAddress
                      ? ColorManger.brun
                      : ColorManger.brunLight,
                  size: responsive.setIconSize(3),
                ),
                responsive.setSizeBox(width: 2),
                Text(
                  userAddressCubit.buildingName!,
                  style: isChosseAddress
                      ? Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: responsive.setTextSize(3),
                          )
                      : Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: responsive.setTextSize(3),
                          ),
                ),
              ],
            ),
            responsive.setSizeBox(height: 1),
            Row(
              children: [
                Icon(
                  IconlyBold.call,
                  color: isChosseAddress
                      ? ColorManger.brun
                      : ColorManger.brunLight,
                  size: responsive.setIconSize(3),
                ),
                responsive.setSizeBox(width: 2),
                Text(
                  userAddressCubit.phone!,
                  style: isChosseAddress
                      ? Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: responsive.setTextSize(3),
                          )
                      : Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: responsive.setTextSize(3),
                          ),
                ),
              ],
            ),
            responsive.setSizeBox(height: 1),
            Row(
              children: [
                Icon(
                  IconlyBold.location,
                  color: isChosseAddress
                      ? ColorManger.brun
                      : ColorManger.brunLight,
                  size: responsive.setIconSize(3),
                ),
                responsive.setSizeBox(width: 2),
                ConstrainedBox(
                  constraints:
                      BoxConstraints(maxWidth: responsive.setWidth(70)),
                  child: Text(
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    userAddressCubit.region!,
                    style: isChosseAddress
                        ? Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: responsive.setTextSize(3),
                            )
                        : Theme.of(context).textTheme.titleMedium!.copyWith(
                              fontSize: responsive.setTextSize(3),
                            ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  BlocBuilder _mapWidget(BuildContext context, ResponsiveUtils responsive) {
    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        final mapCuibt = context.read<MapCubit>();

        return Stack(
          children: [
            ClipRRect(
                borderRadius:
                    BorderRadius.circular(responsive.setBorderRadius(1.4)),
                child: SizedBox(
                  height: responsive.setHeight(16),
                  width: double.infinity,
                  child: CustomGoogleMapMarkerBuilder(
                    customMarkers: mapCuibt.markers,
                    builder: (p0, Set<Marker>? markers) {
                      return GoogleMap(
                        onMapCreated: (controller) =>
                            mapCuibt.setCheckOutMapController(controller),
                        zoomControlsEnabled: false,
                        initialCameraPosition: CameraPosition(
                            target: mapCuibt.targetPosition, zoom: 12),
                        markers: markers ?? {},
                      );
                    },
                  ),
                )),
            Positioned(
              bottom: responsive.setHeight(1),
              right: responsive.setWidth(28),
              child: Container(
                height: responsive.setHeight(4),
                width: responsive.setWidth(30),
                decoration: BoxDecoration(
                    color: ColorManger.white,
                    borderRadius:
                        BorderRadius.circular(responsive.setBorderRadius(1.4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(IconlyBold.location, color: ColorManger.brunLight),
                    responsive.setSizeBox(width: 1.2),
                    Text(context.translate(AppStrings.youreHere) ,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: responsive.setTextSize(3.5))),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }

  Container _changingAddressText(
      BuildContext context, ResponsiveUtils responsive) {
    return Container(
      height: responsive.setHeight(3),
      decoration: BoxDecoration(
          color: ColorManger.backgroundItem,
          borderRadius: BorderRadius.circular(5.r)),
      child: Row(
        children: [
          responsive.setSizeBox(width: 4),
          Icon(
            IconlyBroken.buy,
            color: ColorManger.brunLight,
          ),
          responsive.setSizeBox(width: 3),
          Text(
         context.translate(AppStrings.changingTheAddressMightAffectYourCart)  ,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: responsive.setTextSize(3.5)),
          ),
        ],
      ),
    );
  }

  void _chaneProfileDataaBottomSheet(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);

    showCupertinoModalBottomSheet(
      useRootNavigator: true,
      barrierColor: Colors.black54,
      elevation: responsive.setBorderRadius(2),
      context: context,
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: instance<PaymentCubit>(),
          ),
          BlocProvider.value(
            value: instance<UserAddressCubit>(),
          ),
          BlocProvider.value(
            value: instance<MapCubit>(),
          ),
        ],
        child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          final userAddressCubit =
              context.read<UserAddressCubit>().addressDataList;

          return Padding(
            padding:
                responsive.setPadding(top: 4, left: 5, right: 5, bottom: 2),
            child: Material(
              color: ColorManger.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: responsive.setHeight(8),
                        width: responsive.setWidth(1),
                        color: ColorManger.brunLight,
                      ),
                      responsive.setSizeBox(width: 2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(context.translate(AppStrings.chooseAddress),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontSize: responsive.setTextSize(4),
                                  )),
                          responsive.setSizeBox(height: 0.5),
                          Text(context.translate(AppStrings.youCanEditYourAddressFromYourSettings) ,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontSize: responsive.setTextSize(3),
                                  )),
                        ],
                      )
                    ],
                  ),
                  responsive.setSizeBox(height: 3),
                  Expanded(
                    child: BlocBuilder<PaymentCubit, PaymentState>(
                      builder: (context, state) {
                        return ListView.builder(
                          itemCount: userAddressCubit.length,
                          addAutomaticKeepAlives: true,
                          itemBuilder: (context, index) {
                            final isSelected =
                                context.read<PaymentCubit>().selectedIndex !=
                                    index;
                            final isChosseAddress =
                                context.read<PaymentCubit>().selectedIndex ==
                                    index;

                            return Padding(
                              padding: responsive.setPadding(bottom: 1),
                              child: GestureDetector(
                                onTap: () {
                                  context
                                      .read<PaymentCubit>()
                                      .changeShippingIndex(index);
                                },
                                child: _shippingAddresssContainer(
                                    context: context,
                                    isChosseAddress: isChosseAddress,
                                    isSelected: isSelected,
                                    index: index),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  CustomButton(
                    onPressed: () async {
                      Navigator.pop(context);
                      Navigator.of(context, rootNavigator: !false)
                          .popAndPushNamed(Routes.shippingAddress);
                    },
                    widget: Text(
                    context.translate(AppStrings.saveChanges)  ,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: responsive
                                    .setTextSize(3.8), // Dynamic text size
                              ),
                    ),
                  ),
                  responsive.setSizeBox(height: 1),
                  CustomButton(
                    onPressed: () async {
                      context.read<UserAddressCubit>().isPaymentAddress = true;

                      Navigator.of(context, rootNavigator: !false)
                          .popAndPushNamed(Routes.map);
                    },
                    color: ColorManger.brownLight,
                    widget: Text(
                     context.translate(AppStrings.addNew) ,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: responsive
                                .setTextSize(3.8), // Dynamic text size
                          ),
                    ),
                  ),
                  responsive.setSizeBox(height: 2),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
