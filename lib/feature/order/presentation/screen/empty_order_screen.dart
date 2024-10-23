import '../../../../../core/common/shared/shared_imports.dart'; //


class EmptyOrderScreen extends StatelessWidget {
  final bool isCurrentOrder;
  const EmptyOrderScreen({super.key, this.isCurrentOrder = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
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
                height: 20.h,
              ),
              ErrorInfo(
                title: isCurrentOrder
                    ?   context.translate(AppStrings.noCurrentOrders)   
                    :   context.translate(AppStrings.noPreviousOrders) ,
                description: isCurrentOrder
                    ?  context.translate(AppStrings.youDontHaveAnyActiveOrders)  
                    :  context.translate(AppStrings.itLooksLikeYouHaventCompletedAnyOrdersYet)   ,
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
