import 'package:driver/core/common/shared/shared_imports.dart';

class CancelledOrders extends StatelessWidget {
  const CancelledOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        final orderCubit = context.read<OrderCubit>();

        if (orderCubit.cancelledOrders.isEmpty) {
          return const EmptyOrderScreen();
        }

        return ListView.builder(
          itemCount: orderCubit.cancelledOrders.length,
          itemBuilder: (context, index) {
            final order = orderCubit.cancelledOrders[index];
            final isExpanded = orderCubit.expandedDeliveredIndex == index;

            return Padding(
              padding: responsive.setPadding(bottom: 1, left: 1, right: 1),
              child: GestureDetector(
                onTap: () =>
                    orderCubit.togelExpandedDeliveredOrderBottomSheet(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: responsive.screenWidth,
                  child: Slidable(
                    endActionPane: ActionPane(
                      motion: const BehindMotion(),
                      children: [
                        responsive.setSizeBox(width: 1.5),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: ColorManger.green,
                          foregroundColor: ColorManger.white,
                          icon: Icons.replay_rounded,
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
                            Wrap(
                              spacing: responsive.setWidth(2),
                              runSpacing: responsive.setHeight(1),
                              children: [
                                BuildInfoContainer(
                                  icon: IconlyBold.user2,
                                  text: '${order.user!.name}',
                                ),
                                BuildInfoContainer(
                                  icon: IconlyBold.calling,
                                  text: '${order.shippingAddress!.phone}',
                                ),
                                BuildInfoContainer(
                                  icon: IconlyBold.location,
                                  text:
                                      '${order.shippingAddress!.buildingName}',
                                ),
                              ],
                            ),
                            // Wrap the expanded section with AnimatedSize
                            AnimatedSize(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                              child: isExpanded
                                  ? Column(
                                      children: [
                                        responsive.setSizeBox(height: 1),
                                        Wrap(
                                          spacing: responsive.setWidth(2),
                                          runSpacing: responsive.setHeight(1),
                                          children: [
                                            BuildInfoContainer(
                                              icon: IconlyBold.buy,
                                              text:
                                                  'عدد العناصر الطلب   ${order.cartItems!.length}',
                                            ),
                                            BuildInfoContainer(
                                              icon: Icons.monetization_on_sharp,
                                              text:
                                                  'المبلغ المدفوع   ${order.totalOrderPrice}',
                                            ),
                                            BuildInfoContainer(
                                              icon: IconlyBold.location,
                                              text:
                                                  'شارع  ${order.shippingAddress!.streetName}',
                                            ),
                                            BuildInfoContainer(
                                              icon: IconlyBold.location,
                                              text:
                                                  'عملية الدفع  ${order.paymentMethodType}',
                                            ),
                                            BuildInfoContainer(
                                              icon: IconlyBold.location,
                                              isPaied: order.isPaid!,
                                              text: order.isPaid!
                                                  ? "تم الدفع"
                                                  : "لم يتم الدفع",
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : const SizedBox
                                      .shrink(), // Empty widget when collapsed
                            ),
                          ],
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
