import '../../../../../core/common/shared/shared_imports.dart'; //

class OrderDetails extends StatelessWidget {
  final GetOrdersResponseData? order;
  const OrderDetails({super.key, this.order});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    final responsive = ResponsiveUtils(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(context.translate(AppStrings.orderDetails),
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: responsive.setTextSize(4))),
        leading: IconButton(
          icon: Icon(
              isEnLocale ? IconlyBroken.arrowLeft : IconlyBroken.arrowRight),
          onPressed: () {
            if (order == null) {
              context.pushReplacementNamed(Routes.bottomNavBarRoute);
            } else {
              context.pop();
            }
          },
        ),
        actions: [
          order != null
              ? order!.status == 0 || order!.status == 1
                  ? TextButton(
                      onPressed: () {
                        cancelBottomSheet(
                            context, order, context.read<PaymentCubit>());
                      },
                      child: Text(context.translate(AppStrings.cancel),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: ColorManger.redError,
                                  fontSize: responsive.setTextSize(4))),
                    )
                  : const SizedBox()
              : TextButton(
                  onPressed: () {
                    cancelBottomSheet(
                        context, order, context.read<PaymentCubit>());
                  },
                  child: Text(context.translate(AppStrings.cancel),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: ColorManger.redError,
                          fontSize: responsive.setTextSize(4))),
                ),
          responsive.setSizeBox(width: 3)
        ],
      ),
      body: OrderDetailsBody(order: order),
    );
  }

  void cancelBottomSheet(BuildContext context, GetOrdersResponseData? order,
      PaymentCubit paymentCubit) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);
    showCupertinoModalBottomSheet(
        useRootNavigator: true,
        barrierColor: ColorManger.black54,
        elevation: responsive.setBorderRadius(2),
        context: context,
        builder: (context) => SizedBox(
              height: responsive.setHeight(42),
              child: Padding(
                padding: responsive.setPadding(top: 5, left: 6, right: 6),
                child: Column(
                  children: [
                    Image.asset(
                      ImageAsset.basket,
                      height: responsive.setHeight(8),
                    ),
                    responsive.setSizeBox(height: 2),
                    Text(
                        context.translate(AppStrings.areYouSureYouWantToCancel),
                        style: Theme.of(context).textTheme.titleLarge),
                    responsive.setSizeBox(height: 3),
                    CustomButton(
                      onPressed: () {
                        final orderId = order?.sId ??
                            paymentCubit.createOrderResponseData?.sId;
                        if (orderId != null) {
                          paymentCubit.ordercancelSummit(orderId);
                        }
                      },
                      widget: Text(context.translate(AppStrings.yesCancel),
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontSize: responsive.setTextSize(4))),
                    ),
                    responsive.setSizeBox(height: 1.5),
                    CustomButton(
                      onPressed: () {
                        context.pop();
                      },
                      color: ColorManger.brownLight,
                      widget: Text(context.translate(AppStrings.noKeepIt),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: responsive.setTextSize(4))),
                    )
                  ],
                ),
              ),
            ));
  }
}
