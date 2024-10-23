import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ResponsiveUtils for responsive layout adjustments, such as size, padding, and spacing.
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: responsive.screenWidth * 0.8,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.asset(
                    ImageAsset.noCart,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              responsive.setSizeBox(height: 2),
               ErrorInfo(
                title:context.translate(AppStrings.emptyCart) ,
                description:
                  context.translate(
                    AppStrings.itSeemsLikeYouHaventAddedAnythingToYourCart)  ,
              ),
              responsive.setSizeBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
