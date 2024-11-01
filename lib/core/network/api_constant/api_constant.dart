class ApiConstants {
  static const String baseUrl = 'https://elminiawy-patisserie.vercel.app';
  static const int apiTimeOut = 120 * 1000;

  static const String login = '/v1/api/auth/login';
  static const String completeRgister = '/v1/api/driver/complete';
  static const String storeRegions = '/v1/api/store/address/regions';
  static const String google = '/v1/api/auth/google';
  static const String signup = '/v1/api/auth/signUp';
  static const String forgetPassword = '/v1/api/auth/forgetPassword';
  static const String verifyCode = '/v1/api/auth/verifyCode';
  static const String resetPassword = '/v1/api/auth/resetPassword';
  static const String refreshToken = '$baseUrl/v1/api/auth/token';
  static const String logOut = '/v1/api/auth/logout';

  static const String updateMyImage = '/v1/api/user/updateMyImage';
  static const String updateMyPassword = '/v1/api/user/updateMyPassword';
  static const String updateMyData = '/v1/api/user/updateMyData';
  static const String deleteMyAccount = '/v1/api/user/deleteMe';
  static const String updateMyEmailAddress =
      '/v1/api/user/updateMyEmailAddress';
  static const String notification = '/v1/api/notification';

  static const String banner = '/v1/api/banner';
  static const String category = '/v1/api/categories';
  static const String product = '/v1/api/product';
  static const String newProduct = '/v1/api/product/newProduct';
  static const String wishList = '/v1/api/wishList';

  static const String address = '/v1/api/address';
  static const String cart = '/v1/api/cart';

  static const String storeAddress = '/v1/api/store/address';

  static const String order = '/v1/api/order';
  static const String updateDeliveryImage = '/v1/api/user/updateMyImage';
}
