import '../../../../../core/common/shared/shared_imports.dart'; //

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderPlacedBody(),
    );
  }
}

class OrderPlacedBody extends StatelessWidget {
  const OrderPlacedBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return Padding(
      padding: responsive.setPadding(left: 5, right: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(JsonAsset.congrat),
          responsive.setSizeBox(height: 3),
          Text(context.translate(AppStrings.orderPlaced),
              style: Theme.of(context).textTheme.titleLarge),
          responsive.setSizeBox(height: 2),
          Padding(
            padding: responsive.setPadding(
                left: isEnLocale ? 3 : 2, right: isEnLocale ? 2 : 3),
            child: Text(
                "${context.translate(AppStrings.thankYouForPurchasingFromdriver)}${context.read<PaymentCubit>().createOrderResponseData!.sId}",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: responsive.setTextSize(4),
                    )),
          ),
          responsive.setSizeBox(height: 3),
          CustomButton(
              onPressed: () {
                context.pushReplacementNamed(Routes.bottomNavBarRoute);
              },
              widget: Text(
                context.translate(AppStrings.backToHome),
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontSize:
                          responsive.setTextSize(3.8), // Responsive text size
                    ),
              )),
          responsive.setSizeBox(height: 2),
          CustomButton(
            color: ColorManger.brunLight,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                Routes.orderDetails,
                (route) => false,
              );
            },
            widget: Text(
              context.translate(AppStrings.trackOrder),
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize:
                        responsive.setTextSize(3.8), // Responsive text size
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
