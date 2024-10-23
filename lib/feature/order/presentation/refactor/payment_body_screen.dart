import '../../../../core/common/shared/shared_imports.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);

    return Padding(
      padding: responsive.setPadding(top: 3, right: 6, left: 6, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CheckOutProcessing(screenIndex: 2),
          responsive.setSizeBox(height: 5),
          Text(
            context.translate(AppStrings.chooseYourPaymentMethod),
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: responsive.setTextSize(4)),
          ),
          responsive.setSizeBox(height: 2),
          _choosePaymentMethod(context, responsive),
          responsive.setSizeBox(height: 3),
          Text(
            context.translate(AppStrings.promoCode),
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: responsive.setTextSize(4)),
          ),
          responsive.setSizeBox(height: 2),
          const ApplyCouponCode(),
          const Spacer(),
          CustomButton(
            onPressed: () {
              context.pushNamed(Routes.shippingReviewScreen);
            },
            widget: Text(
              context.translate(AppStrings.saveAndContinue),
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: responsive.setTextSize(
                        3.8), // Adjusted font size for responsiveness
                  ),
            ),
          )
        ],
      ),
    );
  }

  BlocBuilder _choosePaymentMethod(
      BuildContext context, ResponsiveUtils responsive) {
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        final paymentCubit = context.read<PaymentCubit>();

        return Column(
          children: [
            InkWell(
              onTap: () {
                paymentCubit.changePaymentMethod('Cash');
              },
              child: Container(
                width: double.infinity,
                height: responsive.setHeight(6),
                decoration: BoxDecoration(
                  color: paymentCubit.choosePaymentMethod == 'Cash'
                      ? ColorManger.brownLight
                      : ColorManger.backgroundItem,
                  borderRadius:
                      BorderRadius.circular(responsive.setBorderRadius(2)),
                  border: Border.all(
                      color: paymentCubit.choosePaymentMethod == 'Cash'
                          ? ColorManger.brownLight
                          : ColorManger.backgroundItem,
                      width: responsive.setWidth(0.1)),
                ),
                child: Padding(
                  padding: responsive.setPadding(
                      left: isEnLocale ? 2 : 0, right: isEnLocale ? 0 : 2),
                  child: Row(
                    children: [
                      Icon(
                        Icons.handshake_rounded,
                        color: ColorManger.brun,
                      ),
                      responsive.setSizeBox(width: 3),
                      Text(
                        context.translate(AppStrings.cashOnDelivery),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: responsive.setTextSize(4)),
                      ),
                      const Spacer(),
                      Radio<String>(
                        value: 'Cash',
                        groupValue: paymentCubit.choosePaymentMethod,
                        onChanged: (value) {},
                        activeColor: ColorManger.brun,
                        hoverColor: ColorManger.brun,
                      )
                    ],
                  ),
                ),
              ),
            ),
            responsive.setSizeBox(height: 1.2),
            InkWell(
              onTap: () {
                paymentCubit.changePaymentMethod('card');
              },
              child: Container(
                width: double.infinity,
                height: responsive.setHeight(6),
                decoration: BoxDecoration(
                  color: paymentCubit.choosePaymentMethod == 'card'
                      ? ColorManger.brownLight
                      : ColorManger.backgroundItem,
                  borderRadius:
                      BorderRadius.circular(responsive.setBorderRadius(2)),
                  border: Border.all(
                    color: paymentCubit.choosePaymentMethod == 'card'
                        ? ColorManger.brownLight
                        : ColorManger.backgroundItem,
                    width: responsive.setWidth(0.1),
                  ),
                ),
                child: Padding(
                  padding: responsive.setPadding(
                      left: isEnLocale ? 2 : 0, right: isEnLocale ? 0 : 2),
                  child: Row(
                    children: [
                      Icon(
                        Icons.credit_card,
                        color: ColorManger.brun,
                      ),
                      responsive.setSizeBox(width: 3),
                      Text(context.translate(AppStrings.creditOrDebitCard),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: responsive.setTextSize(4))),
                      const Spacer(),
                      Radio<String>(
                        value: 'card',
                        groupValue: paymentCubit.choosePaymentMethod,
                        onChanged: (value) {},
                        activeColor: ColorManger.brun,
                        hoverColor: ColorManger.brun,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
