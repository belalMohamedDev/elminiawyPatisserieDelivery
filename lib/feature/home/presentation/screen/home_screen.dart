import '../../../../../core/common/shared/shared_imports.dart'; // Shared imports for project utilities

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
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
        await _handleAcceptOrderSuccess(customerLocation, context);
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
              await _handleAcceptOrderSuccess(customerLocation, context);
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
                            backgroundColor: Colors.green,
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

  Widget _buildOrderDetailsBottomSheet(
    BuildContext context,
  ) {
    final orderCubit = context.read<OrderCubit>().orderAcceptResponse;
    final responsive = ResponsiveUtils(context);
    if (orderCubit != null) {
      return Positioned(
        bottom: 0,
        child: Container(
          height: responsive.setHeight(14),
          width: responsive.screenWidth,
          decoration: BoxDecoration(
              color: ColorManger.brunLight,
              borderRadius:
                  BorderRadius.circular(responsive.setBorderRadius(2))),
          child: Padding(
            padding:
                responsive.setPadding(top: 1.5, left: 1, right: 3, bottom: 1.5),
            child: Column(
              children: [
                Text(
                  orderCubit.data!.shippingAddress!.region!,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize: responsive.setTextSize(3.8),
                      ),
                ),
                responsive.setSizeBox(height: 1.5),
                Row(
                  children: [
                    _buildInfoContainer(context,
                        icon: IconlyBold.send,
                        text: orderCubit.data!.shippingAddress!.buildingName!,
                        isCardInformation: true),
                    responsive.setSizeBox(width: 2),
                    _buildInfoContainer(context,
                        icon: IconlyBold.discount,
                        text: orderCubit.data!.shippingAddress!.phone!,
                        isCardInformation: true),
                    responsive.setSizeBox(width: 2),
                    _buildInfoContainer(context,
                        icon: IconlyBold.timeCircle,
                        text: orderCubit.data!.user!.name!,
                        isCardInformation: true),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    return const SizedBox();
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
        width: isCardInformation
            ? responsive.setWidth(30)
            : responsive.setWidth(20),
        decoration: BoxDecoration(
          color: ColorManger.brownLight,
          borderRadius: BorderRadius.circular(responsive.setBorderRadius(1.2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  text,
                  style: isCardInformation
                      ? Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontSize: responsive.setTextSize(3),
                          )
                      : Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: responsive.setTextSize(3),
                          ),
                  textAlign: TextAlign.center,
                ),
                if (!isCardInformation)
                  Icon(
                    icon,
                    color: ColorManger.brun,
                    size: responsive.setIconSize(4),
                  ),
              ],
            ),
            responsive.setSizeBox(width: 1),
            if (!isCardInformation)
              Icon(
                icon,
                color: ColorManger.brun,
                size: responsive.setIconSize(4),
              ),
          ],
        ));
  }
}

Future<void> _handleAcceptOrderSuccess(
    LatLng customerLocation, BuildContext context) async {
  final mapCubit = context.read<MapCubit>();
  // Get the driver's current location
  Position? position = await mapCubit.getDriverCurrentLocation(context);

  if (position != null) {
    // Fetch and display route coordinates between driver and customer
    mapCubit.fetchRouteCoordinates(mapCubit.driverLocation, customerLocation);

    // Add markers for driver and customer locations
    mapCubit.adddriverLocationMarkerToMap(position: mapCubit.driverLocation);

    mapCubit.addCustomerLocationMarkerToMap(customerLocation);

    // Move camera to the driver location
    await mapCubit.moveToLocation(
      position: mapCubit.driverLocation,
    );
  }
}
