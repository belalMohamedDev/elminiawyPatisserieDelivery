part of 'authentication_with_google_and_apple_cubit.dart';

@freezed
class AuthenticationWithGoogleAndAppleState with _$AuthenticationWithGoogleAndAppleState {
  const factory AuthenticationWithGoogleAndAppleState.initial() = _Initial;

    const factory AuthenticationWithGoogleAndAppleState.authenticationWithGoogleLoading() =
      AuthenticationWithGoogleLoading;

  const factory AuthenticationWithGoogleAndAppleState.authenticationWithGoogleSuccess(
     AuthResponse auth) = AuthenticationWithGoogleSuccess;

        const factory AuthenticationWithGoogleAndAppleState.authenticationWithGoogleError(ApiErrorModel apiErrorModel) =
      AuthenticationWithGoogleError;
}
