import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class LoadingCartScreen extends StatelessWidget {
  const LoadingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);

    return SingleChildScrollView(
      child: Padding(
        padding: responsive.setPadding(top: 1, left: 3, right: 3, bottom: 1.h),
        child: Column(
          children: [
            _cardItemLoading(responsive),
            responsive.setSizeBox(height: 1),
            _cardItemLoading(responsive),
            responsive.setSizeBox(height: 1),
            _cardItemLoading(responsive),
            responsive.setSizeBox(height: 1),
            _cardItemLoading(responsive),
            responsive.setSizeBox(height: 1),
            _cardItemLoading(responsive),
            responsive.setSizeBox(height: 1),
            _cardItemLoading(responsive),
            responsive.setSizeBox(height: 1.5),
            _paymentCartLoading(responsive),
          ],
        ),
      ),
    );
  }

  Container _paymentCartLoading(ResponsiveUtils responsive) {
    return Container(
      height: responsive.setHeight(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManger.backgroundItem,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(3)),
      ),
      child: Padding(
        padding: responsive.setPadding(
          top: 3,
          left: 3,
          right: 3,
        ),
        // EdgeInsets.only(left: 15.w, right: 15.w, top: 30.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoadingShimmer(
              height: responsive.setHeight(0.5),
              width: responsive.setWidth(80),
              borderRadius: responsive.setBorderRadius(0.5),
            ),
            responsive.setSizeBox(height: 1),
            LoadingShimmer(
              height: responsive.setHeight(0.5),
              width: responsive.setWidth(60),
              borderRadius: responsive.setBorderRadius(0.5),
            ),
            responsive.setSizeBox(height: 1),
            LoadingShimmer(
              height: responsive.setHeight(0.5),
              width: responsive.setWidth(50),
              borderRadius: responsive.setBorderRadius(0.5),
            ),
            responsive.setSizeBox(height: 2),
            LoadingShimmer(
              height: responsive.setHeight(0.5),
              width: responsive.setWidth(80),
              borderRadius: responsive.setBorderRadius(0.8),
            ),
            responsive.setSizeBox(height: 1),
            LoadingShimmer(
              height: responsive.setHeight(0.5),
              width: responsive.setWidth(60),
              borderRadius: responsive.setBorderRadius(0.8),
            ),
            responsive.setSizeBox(height: 2),
            LoadingShimmer(
              height: responsive.setHeight(0.5),
              width: responsive.setWidth(70),
              borderRadius: responsive.setBorderRadius(0.8),
            ),
            responsive.setSizeBox(height: 1),
            LoadingShimmer(
              height: responsive.setHeight(0.5),
              width: responsive.setWidth(40),
              borderRadius: responsive.setBorderRadius(0.8),
            ),
            responsive.setSizeBox(height: 2),
            LoadingShimmer(
              height: responsive.setHeight(0.5),
              width: responsive.setWidth(70),
              borderRadius: responsive.setBorderRadius(0.8),
            ),
          ],
        ),
      ),
    );
  }

  Container _cardItemLoading(ResponsiveUtils responsive) {
    return Container(
      height: responsive.setHeight(8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManger.backgroundItem,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          responsive.setSizeBox(width: 3),
          Image.asset(
            ImageAsset.picture,
            height: responsive.setHeight(5),
          ),
          responsive.setSizeBox(width: 2),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoadingShimmer(
                height: responsive.setHeight(0.5),
                width: responsive.setWidth(70),
                borderRadius: responsive.setBorderRadius(2),
              ),
              responsive.setSizeBox(height: 1),
              LoadingShimmer(
                height: responsive.setHeight(0.5),
                width: responsive.setWidth(40),
                borderRadius: responsive.setBorderRadius(2),
              ),
              responsive.setSizeBox(height: 1),
              LoadingShimmer(
                height: responsive.setHeight(0.5),
                width: responsive.setHeight(30),
                borderRadius: responsive.setBorderRadius(2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
