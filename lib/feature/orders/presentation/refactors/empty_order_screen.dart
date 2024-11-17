import '../../../../../core/common/shared/shared_imports.dart'; //

class EmptyOrderScreen extends StatelessWidget {
  final bool isCurrentOrder;
  const EmptyOrderScreen({super.key, this.isCurrentOrder = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: AspectRatio(
              aspectRatio: 1,
              child: SvgPicture.asset(
                ImageAsset.noOrder,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          ErrorInfo(
            title: isCurrentOrder
                ? context.translate(AppStrings.noCurrentOrders)
                : context.translate(AppStrings.noPreviousOrders),
            description: isCurrentOrder
                ? context.translate(AppStrings.youDontHaveAnyActiveOrders)
                : context.translate(
                    AppStrings.itLooksLikeYouHaventCompletedAnyOrdersYet),
          ),
        ],
      ),
    );
  }
}
