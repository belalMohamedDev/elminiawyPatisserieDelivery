import '../../../../../core/common/shared/shared_imports.dart'; //

// Singleton class for handling login-related operations
class AppLogin {
  factory AppLogin() {
    return _instance;
  }

  AppLogin._();

  static final AppLogin _instance = AppLogin._();

  Future<void> storeData(AuthResponse authResponse,
      {bool isChangeUserPassword = false}) async {
    // Ensure necessary fields are not null before storing them
    if (authResponse.data!.phone != null) {
      await SharedPrefHelper.setSecuredString(
          PrefKeys.userPhone, authResponse.data!.phone!);
    }
    if (authResponse.data!.name != null) {
      await SharedPrefHelper.setSecuredString(
          PrefKeys.userName, authResponse.data!.name!);
    }
    if (authResponse.data!.email != null) {
      await SharedPrefHelper.setSecuredString(
          PrefKeys.userEmail, authResponse.data!.email!);
    }
    if (authResponse.data!.sId != null) {
      await SharedPrefHelper.setSecuredString(
          PrefKeys.userId, authResponse.data!.sId!);
    }
    if (authResponse.accessToken != null) {
      await SharedPrefHelper.setSecuredString(
          PrefKeys.accessToken, authResponse.accessToken!);
    }
    if (authResponse.data!.refreshToken != null) {
      await SharedPrefHelper.setSecuredString(
          PrefKeys.refreshToken, authResponse.data!.refreshToken!);
    }
    if (authResponse.data!.image != null) {
      await SharedPrefHelper.setSecuredString(
          PrefKeys.userImage, authResponse.data!.image!);
    }

    if (!isChangeUserPassword) {
      // Set login status to true and navigate to the map screen
      SharedPrefHelper.setData(PrefKeys.prefsSetLoginMap, true);
    }
  }
}
