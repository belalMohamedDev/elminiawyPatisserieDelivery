import 'package:driver/feature/orders/presentation/refactors/orders_screen_body.dart';

import '../../../../core/common/shared/shared_imports.dart';

class OrdersScreens extends StatefulWidget {
  const OrdersScreens({super.key});

  @override
  State<OrdersScreens> createState() => _OrdersScreensState();
}

class _OrdersScreensState extends State<OrdersScreens> {
  @override
  void initState() {
    super.initState();

    // Use a post-frame callback to initialize after the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final mapCubit = context.read<MapCubit>();
      final orderCubit = context.read<OrderCubit>();

      // Periodically check and fetch orders if none exist
      Timer.periodic(const Duration(seconds: 30), (timer) async {
        if (orderCubit.orders.isEmpty) {
          Position? position = await mapCubit.getDriverCurrentLocation(context);

          if (position != null) {
            // Fetch orders using the driver's current location
            await orderCubit.fetchOrders(
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
    return Scaffold(
      backgroundColor: ColorManger.offWhite,
      body: const SafeArea(child: MyOrdersBody()),
    );
  }
}
