import '../../../../../core/common/shared/shared_imports.dart'; // Shared imports for project utilities

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    // Use a post-frame callback to initialize after the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final mapCubit = context.read<MapCubit>();
      final orderCubit = context.read<OrderCubit>();
      //orderCubit.clearOrderResponse();

      // Load the map style
      mapCubit.loadMapStyle();

      // Retrieve saved order response, if any

      orderCubit.getOrderResponse();

      if (orderCubit.orderAcceptResponse!.data == null) {
        // Periodically check and fetch orders if none exist
        Timer.periodic(const Duration(seconds: 30), (timer) async {
          if (orderCubit.orders.isEmpty) {
            Position? position =
                await mapCubit.getDriverCurrentLocation(context);

            if (position != null) {
              // Fetch orders using the driver's current location
              await orderCubit.fetchOrders(
                '${position.latitude}',
                '${position.longitude}',
              );
            }
          }
        });
      } else {
        // Hide the navigation bar
        context.read<AppLogicCubit>().toggleHideNavigationBarStatus(true);

        // Get the customer's location from the order data
        LatLng customerLocation = LatLng(
          orderCubit.orderAcceptResponse!.data!.shippingAddress!.location!
              .coordinates!.last,
          orderCubit.orderAcceptResponse!.data!.shippingAddress!.location!
              .coordinates!.first,
        );

        // Handle the accepted order process
        await mapCubit.handleAcceptOrderSuccess(customerLocation, context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final mapCubit = context.read<MapCubit>();
    final responsive = ResponsiveUtils(context);

    return Stack(
      children: [
        const Positioned.fill(
          child: GoogleMapWidget(),
        ),
        BlocConsumer<OrderCubit, OrderState>(
          listener: (context, state) async {
            if (state is AcceptOrderSuccess) {
              // Extract customer location coordinates
              LatLng customerLocation = LatLng(
                state.data.data!.shippingAddress!.location!.coordinates!.last,
                state.data.data!.shippingAddress!.location!.coordinates!.first,
              );
              await mapCubit.handleAcceptOrderSuccess(
                  customerLocation, context);
            }
          },
          builder: (context, state) {
            if (state is AcceptOrderSuccess) {
              return const SizedBox();
            }
            if (state is CancelOrderLoading || state is AcceptOrderLoading) {
              return const LoadingOverlay(isLoading: true);
            }

            final orders = context.read<OrderCubit>().orders;
            if (orders.isEmpty) {
              return const SizedBox();
            }
            return ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return Padding(
                  padding: responsive.setPadding(
                    top: 1.5,
                    left: 4,
                    right: 4,
                  ),
                  child: Container(
                    width: responsive.screenWidth,
                    constraints: BoxConstraints(
                      minHeight: responsive.setHeight(10.2),
                      maxHeight: double.infinity,
                    ),
                    child: Slidable(
                      endActionPane: ActionPane(
                        motion: const BehindMotion(),
                        children: [
                          responsive.setSizeBox(width: 1.5),
                          SlidableAction(
                            onPressed: (_) async {
                              Position? position = await mapCubit
                                  .getDriverCurrentLocation(context);
                              if (position != null) {
                                context.read<OrderCubit>().fetchCanceledOrders(
                                      order.sId!,
                                      '${position.latitude}',
                                      '${position.longitude}',
                                    );
                              }
                            },
                            backgroundColor: ColorManger.redError,
                            foregroundColor: ColorManger.white,
                            icon: IconlyBold.delete,
                            borderRadius: BorderRadius.circular(
                                responsive.setBorderRadius(2)),
                          ),
                          responsive.setSizeBox(width: 1.5),
                          SlidableAction(
                            onPressed: (context) {
                              context
                                  .read<OrderCubit>()
                                  .fetchAcceptOrders(order.sId!);
                            },
                            backgroundColor: ColorManger.green,
                            foregroundColor: ColorManger.white,
                            icon: Icons.check_rounded,
                            borderRadius: BorderRadius.circular(
                                responsive.setBorderRadius(2)),
                          ),
                        ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorManger.backgroundItem,
                          borderRadius: BorderRadius.circular(
                              responsive.setBorderRadius(2)),
                        ),
                        child: Padding(
                          padding: responsive.setPadding(
                              left: 3, top: 1, bottom: 1, right: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      order.shippingAddress!.region!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                            fontSize: responsive.setTextSize(3),
                                          ),
                                    ),
                                    responsive.setSizeBox(height: 1.5),
                                    Row(
                                      children: [
                                        _buildInfoContainer(
                                          context,
                                          icon: IconlyBold.send,
                                          text: order.distance!,
                                        ),
                                        responsive.setSizeBox(width: 2),
                                        _buildInfoContainer(
                                          context,
                                          icon: IconlyBold.timeCircle,
                                          text: order.duration!,
                                        ),
                                        responsive.setSizeBox(width: 2),
                                        _buildInfoContainer(
                                          context,
                                          icon: IconlyBold.discount,
                                          text: '${order.totalOrderPrice}',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
        BlocBuilder<OrderCubit, OrderState>(
          builder: (context, state) {
            return _buildOrderDetailsBottomSheet(
              context,
            );
          },
        )
      ],
    );
  }

  Widget _buildOrderDetailsBottomSheet(BuildContext context) {
    final orderCubit = context.read<OrderCubit>();
    final responsive = ResponsiveUtils(context);

    Widget buildRow(
        {required IconData icon, required String text, double? textSize}) {
      return Row(
        children: [
          Icon(
            icon,
            color: ColorManger.white,
            size: responsive.setIconSize(6),
          ),
          responsive.setSizeBox(width: 4),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: responsive.setTextSize(textSize ?? 3.8),
                  ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
        ],
      );
    }

    if (orderCubit.orderAcceptResponse != null) {
      return Positioned(
        bottom: 0,
        child: GestureDetector(
          onTap: () => orderCubit.togelExpandedBottomSheet(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: orderCubit.isExpanded
                ? responsive.setHeight(70)
                : responsive.setHeight(14),
            width: responsive.screenWidth,
            decoration: BoxDecoration(
              color: ColorManger.backgroundBlue,
              borderRadius:
                  BorderRadius.circular(responsive.setBorderRadius(2)),
            ),
            child: Padding(
              padding:
                  responsive.setPadding(top: 2, left: 3, right: 3, bottom: 1.5),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (orderCubit.isExpanded) ...[
                      buildRow(
                          icon: IconlyBold.location,
                          text: (context.translate(AppStrings.addressDetails)),
                          textSize: 4.5),
                      responsive.setSizeBox(height: 3),
                    ],
                    buildRow(
                      icon: IconlyBold.location,
                      text: orderCubit
                          .orderAcceptResponse!.data!.shippingAddress!.region!,
                    ),
                    responsive.setSizeBox(height: 1.5),
                    if (!orderCubit.isExpanded) ...[
                      Row(
                        children: [
                          _buildInfoContainer(
                            context,
                            icon: Icons.house_rounded,
                            text: orderCubit.orderAcceptResponse!.data!
                                .shippingAddress!.buildingName!,
                            isCardInformation: true,
                          ),
                          responsive.setSizeBox(width: 2),
                          _buildInfoContainer(
                            context,
                            icon: Icons.phone_iphone_rounded,
                            text: orderCubit.orderAcceptResponse!.data!
                                .shippingAddress!.phone!,
                            isCardInformation: true,
                          ),
                          responsive.setSizeBox(width: 2),
                          _buildInfoContainer(
                            context,
                            icon: IconlyBold.profile,
                            text: orderCubit
                                .orderAcceptResponse!.data!.user!.name!,
                            isCardInformation: true,
                          ),
                        ],
                      ),
                    ],
                    if (orderCubit.isExpanded) ...[
                      buildRow(
                        icon: Icons.house_rounded,
                        text: orderCubit.orderAcceptResponse!.data!
                            .shippingAddress!.buildingName!,
                      ),
                      responsive.setSizeBox(height: 1.5),
                      buildRow(
                        icon: Icons.radar_outlined,
                        text: orderCubit.orderAcceptResponse!.data!
                            .shippingAddress!.streetName!,
                      ),
                      responsive.setSizeBox(height: 1.5),
                      buildRow(
                        icon: Icons.radar_outlined,
                        text: orderCubit
                            .orderAcceptResponse!.data!.shippingAddress!.floor!,
                      ),
                      responsive.setSizeBox(height: 1.5),
                      buildRow(
                        icon: Icons.phone_android_rounded,
                        text: orderCubit
                            .orderAcceptResponse!.data!.shippingAddress!.phone!,
                      ),
                      responsive.setSizeBox(height: 1),
                      Padding(
                        padding: responsive.setPadding(left: 5, right: 2),
                        child: const Divider(),
                      ),
                      responsive.setSizeBox(height: 1),
                      buildRow(
                          icon: IconlyBold.user2,
                          textSize: 4.5,
                          text: context.translate(AppStrings.clientData)),
                      responsive.setSizeBox(height: 3),
                      buildRow(
                        icon: IconlyBold.profile,
                        text: orderCubit.orderAcceptResponse!.data!.user!.name!,
                      ),
                      responsive.setSizeBox(height: 1.5),
                      buildRow(
                        icon: Icons.phone_android_rounded,
                        text:
                            orderCubit.orderAcceptResponse!.data!.user!.phone!,
                      ),
                      responsive.setSizeBox(height: 3),
                      CustomButton(
                        onPressed: () {},
                        color: ColorManger.orangeColor,
                        defaultText:
                            (context.translate(AppStrings.deliveredOrder)),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
    return const SizedBox();
  }
}

Widget _buildInfoContainer(
  BuildContext context, {
  required IconData icon,
  required String text,
  bool isCardInformation = false,
}) {
  final responsive = ResponsiveUtils(context);
  return Container(
      height: responsive.setHeight(3),
      width:
          isCardInformation ? responsive.setWidth(30) : responsive.setWidth(20),
      decoration: BoxDecoration(
        color: isCardInformation
            ? ColorManger.orangeColor
            : ColorManger.brownLight,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(1.2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              responsive.setSizeBox(width: 2),
              Icon(
                icon,
                color: isCardInformation ? ColorManger.white : ColorManger.brun,
                size: responsive.setIconSize(4),
              ),
              responsive.setSizeBox(width: 1.5),
              Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: isCardInformation
                    ? Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: responsive.setTextSize(3),
                        )
                    : Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: responsive.setTextSize(3),
                        ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ],
      ));
}
