
import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class RouteStatesScreen extends StatelessWidget {
  const RouteStatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset(
                  ImageAsset.noRoute,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ErrorInfo(
              title: context.translate( AppStrings.youAreNotLoggedIn),
              description:context.translate(AppStrings.pleaseLoginToContinueAndEnjoyFullAccessToTheAppFeatures) 
                  ,
              btnText: context.translate(AppStrings.logIn),
              press: () async {
                 await AppLogout().logOutThenNavigateToLogin();
              },
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
