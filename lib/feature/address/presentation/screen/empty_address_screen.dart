

import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class EmptyAddressScreen extends StatelessWidget {
  const EmptyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.asset(
                    ImageAsset.noAddress,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ErrorInfo(
                title:context.translate(AppStrings.emptyAddress) ,
                description:
                  context.translate(AppStrings.itSeemsLikeYouHavenAddedAnyAddressesYet)  ,
                btnText:context.translate(AppStrings.addAddress) ,
                press: () {
                context
                      .pushNamed(Routes.map);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
