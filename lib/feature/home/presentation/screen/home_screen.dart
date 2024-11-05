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


    final mapCuibt = context.read<MapCubit>();
    mapCuibt.loadMapStyle();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Timer.periodic(const Duration(seconds: 30), (timer) async {
        if (context.read<OrderCubit>().orders.isEmpty) {
          Position? position = await mapCuibt.getDriverCurrentLocation(context);

          if (position != null) {
            // Use the fetched position
            context.read<OrderCubit>().fetchOrders(
                  '${position.latitude}',
                  '${position.longitude}',
                );
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final mapCubit = context.read<MapCubit>();
    final responsive = ResponsiveUtils(context);

    return Stack(
      children: [
        Positioned.fill(
          child: GoogleMapWidget(
            mapCubit: mapCubit,
          ),
        ),
        BlocBuilder<OrderCubit, OrderState>(
          builder: (context, state) {
            final orders = context.read<OrderCubit>().orders;
            return ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return Padding(
                  padding: responsive.setPadding(
                    top: 3,
                    left: 4,
                    right: 4,
                  ),
                  child: Container(
                    width: responsive.screenWidth,
                    constraints: BoxConstraints(
                      minHeight: responsive.setHeight(11.5),
                      maxHeight: double.infinity,
                    ),
                    decoration: BoxDecoration(
                      color: ColorManger.backgroundItem,
                      borderRadius:
                          BorderRadius.circular(responsive.setBorderRadius(2)),
                    ),
                    child: Padding(
                      padding: responsive.setPadding(left: 2.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: responsive.setPadding(
                                bottom: 1, right: 3, top: 1),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  child: IconButton(
                                    onPressed: () {
                                      context
                                          .read<OrderCubit>()
                                          .fetchAcceptOrders(order.sId!);
                                    },
                                    icon: Icon(
                                      Icons.check_rounded,
                                      color: ColorManger.white,
                                    ),
                                  ),
                                ),
                                responsive.setSizeBox(height: 1.2),
                                CircleAvatar(
                                  backgroundColor: ColorManger.redError,
                                  child: IconButton(
                                    onPressed: () async {
                                      Position? position = await context
                                          .read<MapCubit>()
                                          .getDriverCurrentLocation(context);
                                      if (position != null) {
                                        context
                                            .read<OrderCubit>()
                                            .fetchCanceledOrders(
                                              order.sId!,
                                              '${position.latitude}',
                                              '${position.longitude}',
                                            );
                                      }
                                    },
                                    icon: Icon(
                                      Icons.close_rounded,
                                      color: ColorManger.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          responsive.setSizeBox(width: 7),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
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
                                responsive.setSizeBox(height: 1.2),
                                Row(
                                  children: [
                                    _buildInfoContainer(
                                      context,
                                      icon: IconlyBold.send,
                                      text: order.distance!,
                                      responsive: responsive,
                                    ),
                                    responsive.setSizeBox(width: 2),
                                    _buildInfoContainer(
                                      context,
                                      icon: IconlyBold.timeCircle,
                                      text: order.duration!,
                                      responsive: responsive,
                                    ),
                                    responsive.setSizeBox(width: 2),
                                    _buildInfoContainer(
                                      context,
                                      icon: IconlyBold.discount,
                                      text: '${order.totalOrderPrice}',
                                      responsive: responsive,
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
                );
              },
            );
          },
        ),
      ],
    );
  }

  Widget _buildInfoContainer(BuildContext context,
      {required IconData icon,
      required String text,
      required ResponsiveUtils responsive}) {
    return Container(
      height: responsive.setHeight(3),
      width: responsive.setWidth(20),
      decoration: BoxDecoration(
        color: ColorManger.brownLight,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(1.2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: responsive.setTextSize(3),
                ),
          ),
          responsive.setSizeBox(width: 1),
          Icon(
            icon,
            color: ColorManger.brun,
            size: responsive.setIconSize(4),
          ),
        ],
      ),
    );
  }
}
