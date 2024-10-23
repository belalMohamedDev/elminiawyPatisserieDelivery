import '../../../../../core/common/shared/shared_imports.dart'; //

class TokenInterceptor extends Interceptor {
  final Dio dio;
  final navigatorKey = GlobalKey<NavigatorState>();

  TokenInterceptor(this.dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // Obtain the access token

    String? accessToken =
        await SharedPrefHelper.getSecuredString(PrefKeys.accessToken);

    String? language = SharedPrefHelper.getString(PrefKeys.prefsLanguage).isEmpty?'en': SharedPrefHelper.getString(PrefKeys.prefsLanguage);
    // Add the access token to the Authorization header
    options.headers["Accept"] = "application/json";
    options.headers["Authorization"] = "Bearer $accessToken";
    options.headers["lang"] = language;

    return handler.next(options); // continue
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Obtain the refresh token
      String? refreshToken =
          await SharedPrefHelper.getSecuredString(PrefKeys.refreshToken);

      try {
        // Request a new access token
        final response = await dio.post(
          ApiConstants.refreshToken,
          data: {'refreshToken': refreshToken},
          options: Options(headers: {"Content-Type": "application/json"}),
        );

        final newAccessToken = response.data['accessToken'];

        // Save the new access token
        await SharedPrefHelper.setSecuredString(
            PrefKeys.accessToken, newAccessToken);

        final String fullPath = ApiConstants.baseUrl + err.requestOptions.path;

        // Retry the original request with the new access token
        err.requestOptions.headers["Authorization"] = "Bearer $newAccessToken";
        final opts = Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers);
        final cloneReq = await dio.request(
          fullPath,
          options: opts,
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
        );

        return handler.resolve(cloneReq);
      } catch (e) {
        // Refresh token is also expired or invalid, force re-login
        _showSessionExpiredMessage();
        return handler.reject(err);
      }
    } else if (err.response?.statusCode == 500) {
      // Retry the request in case of a 500 error
      try {
        final cloneReq = await dio.request(
          err.requestOptions.path,
          options: Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers,
          ),
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
        );

        return handler.resolve(cloneReq);
      } catch (e) {
        // If retry fails, forward the error
        return handler.reject(err);
      }
    }

    // If the error is not related to token expiration, forward it
    return handler.next(err);
  }

  void _showSessionExpiredMessage() {
    final context = navigatorKey.currentState?.context;

    if (context != null) {
      ShowToast.showToastErrorTop(
          errorMessage: context.translate(AppStrings.sessionExpired),
          context: context);

      // Show session expired message
      navigatorKey.currentState?.pushNamedAndRemoveUntil(
        Routes.loginRoute,
        (Route<dynamic> route) => false,
        arguments: context.translate(AppStrings.sessionExpired),
      );
    }
  }
}
