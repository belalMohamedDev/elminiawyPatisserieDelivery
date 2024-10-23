import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class ApplyCouponCode extends StatelessWidget {
  const ApplyCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);

    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        state.whenOrNull(
          deleteCartItemError: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
          getCartItemSuccess: (data) => ShowToast.showToastSuccessTop(
              message: data!.message!, context: context),
        );
      },
      builder: (context, state) {
        return Container(
          height: responsive.setHeight(9),
          decoration: BoxDecoration(
            color: ColorManger.brownLight,
            borderRadius: BorderRadius.circular(responsive.setBorderRadius(4)),
          ),
          child: Padding(
            padding: responsive.setPadding(left: 4.5, right: 5),
            child: Center(
              child: SizedBox(
                height: responsive.setHeight(5),
                child: TextFormField(
                  controller: context.read<CartCubit>().applyCouponController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Transform.rotate(
                        angle: 1.58,
                        child: Icon(
                          IconlyBroken.ticket,
                          color: ColorManger.brunLight,
                        ),
                      ),
                      suffixIcon: InkWell(
                        onTap: () => context.read<CartCubit>().applyCoupon(),
                        child: Container(
                          width: responsive.setWidth(18),
                          decoration: BoxDecoration(
                            color: ColorManger.brun,
                            borderRadius: BorderRadius.circular(
                                responsive.setBorderRadius(1.8)),
                          ),
                          child: state is ApplyCouponLoading
                              ? Center(
                                  child: SizedBox(
                                    height: responsive.setHeight(2),
                                    width: responsive.setWidth(4),
                                    child: CircularProgressIndicator(
                                      color: ColorManger.white,
                                      strokeWidth: 2,
                                    ),
                                  ),
                                )
                              : Center(
                                  child: Text(
                                 context.translate(AppStrings.apply)  ,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                          fontSize: responsive.setTextSize(
                                              3), // Dynamic text size
                                        ),
                                  ),
                                ),
                        ),
                      ),
                      hintText:  context.translate(AppStrings.enterVoucherCode)  ,
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: responsive.setTextSize(3)),
                      fillColor: ColorManger.backgroundItem,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorManger.backgroundItem,
                        ),
                        borderRadius: BorderRadius.all(Radius.elliptical(
                            responsive.setBorderRadius(2),
                            responsive.setBorderRadius(2))),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorManger.backgroundItem,
                        ),
                        borderRadius: BorderRadius.all(Radius.elliptical(
                            responsive.setBorderRadius(2),
                            responsive.setBorderRadius(2))),
                      )),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
