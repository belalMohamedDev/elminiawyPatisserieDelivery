import '../../../../../core/common/shared/shared_imports.dart'; //

class ReviewPaymentBody extends StatelessWidget {
  const ReviewPaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);
    return Padding(
         padding: responsive.setPadding(top: 3, right: 6, left: 6, bottom: 5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CheckOutProcessing(screenIndex: 3),
            responsive.setSizeBox(
              height: 3,
            ),
            _shippingAddresssContainer(context, responsive),
            responsive.setSizeBox(
              height: 1,
            ),
            _paymentMethodContainer(context, responsive),
            responsive.setSizeBox(
              height: 2,
            ),
            _addNotes(context, responsive)
          ],
        ),
      ),
    );
  }

  Column _addNotes(BuildContext context, ResponsiveUtils responsive) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
       context.translate(AppStrings.addNotes)  ,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: responsive.setTextSize(4)),
        ),
        responsive.setSizeBox(height: 1),
        TextFormField(
          controller: context.read<PaymentCubit>().notesController,
          keyboardType: TextInputType.text,
          minLines: 3,
          maxLines: 10,
          decoration: InputDecoration(
              hintText: context.translate(AppStrings.typeAnyNoteRelatedToThisOrder) ,
              hintStyle: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: responsive.setTextSize(4)),
              fillColor: ColorManger.backgroundItem,
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: ColorManger.brownLight, width: 0.5),
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
      ],
    );
  }

  Container _paymentMethodContainer(
      BuildContext context, ResponsiveUtils responsive) {
    final paymentCubit = context.read<PaymentCubit>();

    return Container(
      height: responsive.setHeight(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManger.backgroundItem,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2)),
        border: Border.all(
          color: ColorManger.brownLight,
          width: responsive.setWidth(0.2),
        ),
      ),
      child: Padding(
        padding: responsive.setPadding(top: 2, left: 5, right: 5),
        // EdgeInsets.only(top: 15.h, left: 10.w, right: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(context.translate(AppStrings.payment),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: responsive.setTextSize(4))),
                const Spacer(),
                InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: Text(context.translate(AppStrings.edit) ,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: responsive.setTextSize(4))),
                ),
              ],
            ),
            responsive.setSizeBox(height: 2),
            Row(
              children: [
                Icon(Icons.credit_card, color: ColorManger.brun),
                responsive.setSizeBox(width: 2),
                Text(
                  paymentCubit.choosePaymentMethod,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: responsive.setTextSize(4)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _shippingAddresssContainer(
      BuildContext context, ResponsiveUtils responsive) {
    final addressData = context
        .read<UserAddressCubit>()
        .addressDataList[context.read<PaymentCubit>().selectedIndex];

    return Container(
      height: responsive.setHeight(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManger.backgroundItem,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2)),
        border: Border.all(
          color: ColorManger.brownLight,
          width: responsive.setWidth(0.2),
        ),
      ),
      child: Padding(
        padding: responsive.setPadding(top: 2, left: 5, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(context.translate(AppStrings.shippingAddress) ,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: responsive.setTextSize(4))),
                const Spacer(),
                InkWell(
                    onTap: () {
                      context.pop();

                      context.pop();
                    },
                    child: Icon(IconlyBold.location, color: ColorManger.brun)),
                responsive.setSizeBox(width: 1),
                InkWell(
                  onTap: () {
                    context.pop();
                    context.pop();
                  },
                  child: Text(
                  context.translate(AppStrings.change)  ,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: responsive.setTextSize(4)),
                  ),
                ),
              ],
            ),
            responsive.setSizeBox(height: 2),
            Row(
              children: [
                Icon(IconlyBold.location, color: ColorManger.brun),
                responsive.setSizeBox(width: 1),
                Text(
                  addressData.buildingName!,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: responsive.setTextSize(4)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
