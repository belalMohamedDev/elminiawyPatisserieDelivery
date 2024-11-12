import '../../../../../core/common/shared/shared_imports.dart'; //

class AppInitialRoute {
  factory AppInitialRoute() {
    return _instance;
  }

  AppInitialRoute._();

  static final AppInitialRoute _instance = AppInitialRoute._();





  static bool isLoggedInUser = false;
  static bool isOnBoardingScreen = false;
  static bool isNextToCompleteRgister = false;
  static bool isLocatedMap = false;

  getStoreDataAndCheckInitialRoute() async {
    var results = await Future.wait([
      SharedPrefHelper.getSecuredString(PrefKeys.refreshToken),
      SharedPrefHelper.getSecuredString(PrefKeys.enLocationArea),
    ]);

    bool? isOnBoardingScreenView =
        SharedPrefHelper.getBool(PrefKeys.prefsKeyOnBoardingScreenView);

    bool? isCompleteRgister =
        SharedPrefHelper.getBool(PrefKeys.prefsCompleteRgister);

    String? userToken = results[0] as String?;

    String? locationArea = results[1] as String?;

    if (!userToken.isNullOrEmpty()) {
      isLoggedInUser = true;
    } else {
      isLoggedInUser = false;
    }

    if (isOnBoardingScreenView == true) {
      isOnBoardingScreen = true;
    }

    if (isCompleteRgister == true) {
      isNextToCompleteRgister = true;
    }

    if (!locationArea.isNullOrEmpty()) {
      isLocatedMap = true;
    } else {
      isLocatedMap = false;
    }
  }
}
