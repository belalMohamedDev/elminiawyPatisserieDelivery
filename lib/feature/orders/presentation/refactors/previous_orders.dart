import 'package:driver/core/common/shared/shared_imports.dart';

class PreviousOrders extends StatelessWidget {
  const PreviousOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        final orderCubit = context.read<OrderCubit>();
        if (orderCubit.deliveredOrders.isEmpty) {
          return const EmptyOrderScreen();
        }

        return ListView.builder(
          itemCount: orderCubit.deliveredOrders.length,
          itemBuilder: (context, index) {
            final order = orderCubit.deliveredOrders[index];
            final isExpanded = orderCubit.expandedDeliveredIndex == index;
            return Padding(
              padding: responsive.setPadding(bottom: 1, left: 1, right: 1),
              child: GestureDetector(
                onTap: () =>
                    orderCubit.togelExpandedDeliveredOrderBottomSheet(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: responsive.screenWidth,
                  decoration: BoxDecoration(
                    color: ColorManger.brunLight,
                    borderRadius:
                        BorderRadius.circular(responsive.setBorderRadius(2)),
                  ),
                  child: Padding(
                    padding: responsive.setPadding(
                        left: 3, top: 1.5, bottom: 1.5, right: 3),
                    child: SingleChildScrollView(
                      child: Column(
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
                          Row(
                            children: [
                              BuildInfoContainer(
                                icon: IconlyBold.user2,
                                text: '${order.user!.name}',
                              ),
                              responsive.setSizeBox(width: 2),
                              BuildInfoContainer(
                                icon: IconlyBold.calling,
                                text: '${order.shippingAddress!.phone}',
                              ),
                              responsive.setSizeBox(width: 2),
                              BuildInfoContainer(
                                icon: IconlyBold.location,
                                text: '${order.shippingAddress!.buildingName}',
                              ),
                            ],
                          ),
                          if (isExpanded) ...[
                            responsive.setSizeBox(height: 1),
                            Row(
                              children: [
                                BuildInfoContainer(
                                  icon: IconlyBold.buy,
                                  text:
                                      'عدد العناصر الطلب   ${order.cartItems!.length}',
                                ),
                                responsive.setSizeBox(width: 2),
                                BuildInfoContainer(
                                  icon: Icons.monetization_on_sharp,
                                  text:
                                      'المبلغ المدفوع   ${order.totalOrderPrice}',
                                ),
                              ],
                            ),
                            responsive.setSizeBox(height: 1),
                            Row(
                              children: [
                                BuildInfoContainer(
                                  icon: IconlyBold.location,
                                  text:
                                      'شارع  ${order.shippingAddress!.streetName}',
                                ),
                                responsive.setSizeBox(width: 2),
                                BuildInfoContainer(
                                  icon: IconlyBold.location,
                                  text:
                                      'عملية الدفع  ${order.paymentMethodType}',
                                ),
                                responsive.setSizeBox(width: 2),
                                BuildInfoContainer(
                                  icon: IconlyBold.location,
                                  isPaied: order.isPaid!,
                                  text: order.isPaid!
                                      ? "تم الدفع"
                                      : "لم يتم الدفع",
                                ),
                              ],
                            ),
                          ]
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
    );
  }
}
