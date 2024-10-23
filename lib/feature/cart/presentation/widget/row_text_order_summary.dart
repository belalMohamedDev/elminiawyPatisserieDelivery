import '../../../../core/common/shared/shared_imports.dart';

class RowTextOrderSummary extends StatelessWidget {
  final String orderText;
  final double orderprice;

  const RowTextOrderSummary({
    super.key,
    required this.orderText,
    required this.orderprice,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);
    return Row(
      children: [
        Text(
          orderText,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: responsive.setTextSize(4)),
        ),
        const Spacer(),
        Text(
          '$orderprice   ${context.translate(AppStrings.egy)}',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: responsive.setTextSize(4)),
        ),
      ],
    );
  }
}
