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

    // if(context.read<AppLogicCubit>().driverActive==true){
    //   context.read<OrderCubit>().startPolling();
    // }
    final mapCuibt = context.read<MapCubit>();
    mapCuibt.loadMapStyle();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer.periodic(const Duration(seconds: 30), (timer) async {
        Position? position = await mapCuibt.getDriverCurrentLocation(context);

        if (position != null) {
          // Use the fetched position
          context.read<OrderCubit>().fetchOrders(
                '${position.latitude}',
                '${position.longitude}',
              );
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
            if (state is GetAllOrderSuccess) {
              final orders = state.data.data!;
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
                      height: responsive.setHeight(10.8),
                      width: responsive.screenWidth,
                      decoration: BoxDecoration(
                          color: ColorManger.backgroundItem,
                          borderRadius: BorderRadius.circular(
                              responsive.setBorderRadius(2))),
                      child: Padding(
                        padding: responsive.setPadding(left: 3.5, top: 1.8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  responsive.setPadding(bottom: 1.8, right: 3),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.green,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check_rounded,
                                        color: ColorManger.white,
                                      ),
                                    ),
                                  ),
                                  responsive.setSizeBox(width: 3),
                                  CircleAvatar(
                                    backgroundColor: ColorManger.redError,
                                    child: IconButton(
                                      onPressed: () {},
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
                                      const Spacer(),
                                      _buildInfoContainer(
                                        context,
                                        icon: IconlyBold.timeCircle,
                                        text: order.duration!,
                                        responsive: responsive,
                                      ),
                                      const Spacer(),
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
            }
            return const SizedBox();
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
      width: responsive.setWidth(18),
      decoration: BoxDecoration(
        color: ColorManger.brownLight,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2)),
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
