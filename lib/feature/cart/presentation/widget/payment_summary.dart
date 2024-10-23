import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class PaymentSummary extends StatelessWidget {
  final GetCartDataResponse cartData;

  const PaymentSummary({
    super.key,
    required this.cartData,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);
    return CouponCard(
      curveAxis: Axis.vertical,
      curvePosition: responsive.setWidth(55),
      clockwise: true,
      borderRadius: responsive.setBorderRadius(5),
      curveRadius: responsive.setBorderRadius(6),
      height: responsive.setHeight(20),
      decoration: BoxDecoration(
        color: ColorManger.brunLight,
      ),
      firstChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: responsive.setPadding(left: 5, top: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 context.translate(AppStrings.subTotal) ,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: responsive.setTextSize(3.5)),
                ),
                responsive.setSizeBox(height: 1),
                Text(
                context.translate(AppStrings.priceAfterDiscount) ,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: responsive.setTextSize(3.5)),
                ),
                responsive.setSizeBox(height: 1),
                Text(
              context.translate(AppStrings.tax)    ,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: responsive.setTextSize(3.5)),
                ),
                responsive.setSizeBox(height: 1),
                Text(
                 context.translate(AppStrings.shipping) ,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: responsive.setTextSize(3.5)),
                ),
                responsive.setSizeBox(height: 1),
                Text(
              context.translate(AppStrings.totalAmount)   ,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: responsive.setTextSize(3.5)),
                ),
              ],
            ),
          ),
          const LayoutBuilderPointLine(),
        ],
      ),
      secondChild: Container(
        color: ColorManger.brownLight,
        child: Padding(
          padding: EdgeInsets.only(
              left: 30.w, right: 20.w, top: 15.w), // Adjusted padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${cartData.totalCartPrice}   ${context.translate(AppStrings.egy)}',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: responsive.setTextSize(3.5)),
              ),
              responsive.setSizeBox(height: 1),
              Text(
                '${cartData.totalPriceAfterDiscount}   ${context.translate(AppStrings.egy)}',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: responsive.setTextSize(3.5)),
              ),
              responsive.setSizeBox(height: 1),
              Text(
                '${cartData.taxPrice}   ${context.translate(AppStrings.egy)}',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: responsive.setTextSize(3.5)),
              ),
              responsive.setSizeBox(height: 1),
              Text(
                '${cartData.shippingPrice}   ${context.translate(AppStrings.egy)}',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: responsive.setTextSize(3.5)),
              ),
              responsive.setSizeBox(height: 1),
              Text(
                '${cartData.totalOrderPrice}   ${context.translate(AppStrings.egy)}',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: responsive.setTextSize(3.5)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
