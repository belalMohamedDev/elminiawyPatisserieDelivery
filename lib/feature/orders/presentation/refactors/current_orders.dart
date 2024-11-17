import 'package:driver/core/common/shared/shared_imports.dart';

class CurrentOrders extends StatelessWidget {
  const CurrentOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    final mapCubit = context.read<MapCubit>();

    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        final orderCubit = context.read<OrderCubit>();

        if (orderCubit.orders.isEmpty) {
          return const EmptyOrderScreen();
        }

        return ListView.builder(
          itemCount: orderCubit.orders.length,
          itemBuilder: (context, index) {
            final order = orderCubit.orders[index];
            final isExpanded = orderCubit.expandedIndex == index;

            return Padding(
              padding: responsive.setPadding(bottom: 1, left: 1, right: 1),
              child: GestureDetector(
                onTap: () => orderCubit.togelExpandedBottomSheet(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: isExpanded
                      ? responsive.setHeight(23.5)
                      : responsive.setHeight(10.2),
                  width: responsive.screenWidth,
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
                        color: ColorManger.brunLight,
                        borderRadius: BorderRadius.circular(
                            responsive.setBorderRadius(2)),
                      ),
                      child: Padding(
                        padding: responsive.setPadding(
                            left: 3, top: 1.5, bottom: 1.5, right: 3),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                order.shippingAddress!.region!,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: responsive.setTextSize(3),
                                    ),
                              ),
                              responsive.setSizeBox(height: 1.5),
                              if (isExpanded) ...[
                                buildRow(
                                  context,
                                  icon: Icons.house_rounded,
                                  text: order.shippingAddress!.buildingName!,
                                ),
                                responsive.setSizeBox(height: 1.5),
                                buildRow(
                                  context,
                                  icon: Icons.radar_outlined,
                                  text: order.shippingAddress!.streetName!,
                                ),
                                responsive.setSizeBox(height: 1.5),
                                buildRow(
                                  context,
                                  icon: Icons.phone_android_rounded,
                                  text: order.shippingAddress!.phone!,
                                ),
                              ],
                              if (isExpanded) ...[
                                responsive.setSizeBox(height: 2),
                              ],
                              Row(
                                children: [
                                  BuildInfoContainer(
                                    icon: IconlyBold.send,
                                    text: order.distance!,
                                  ),
                                  responsive.setSizeBox(width: 2),
                                  BuildInfoContainer(
                                    icon: IconlyBold.timeCircle,
                                    text: order.duration!,
                                  ),
                                  responsive.setSizeBox(width: 2),
                                  BuildInfoContainer(
                                    icon: IconlyBold.discount,
                                    text: '${order.totalOrderPrice}',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

Widget buildRow(BuildContext context,
    {required IconData icon, required String text, double? textSize}) {
  final responsive = ResponsiveUtils(context);
  return Row(
    children: [
      Icon(
        icon,
        color: ColorManger.white,
        size: responsive.setIconSize(5),
      ),
      responsive.setSizeBox(width: 4),
      Expanded(
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: responsive.setTextSize(textSize ?? 3.5),
              ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
      ),
    ],
  );
}
