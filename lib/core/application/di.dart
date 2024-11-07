import 'package:driver/feature/Authentication/logic/CompleteRgistrationProcess/complete_registration_process_cubit.dart';

import '../../../../core/common/shared/shared_imports.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  await Future.wait([
    _initAppModule(),
    _inithome(),
    _initPlaces(),
    _initLogin(),
    _initSignUp(),
    _initForgetPassword(),
    _initLogOut(),
    _initAccoutInformation(),
    _initChangeEmailAddress(),
    _initChangeMyPassword(),
    _initNotification(),
    _initSignInWithGoogleAndApple()
  ]);
}

Future<void> _initAppModule() async {
  // app module ,its a module where we put all generic dependencies

  await ScreenUtil.ensureScreenSize();

  Bloc.observer = AppBlocObserver();

  final navigatorKey = GlobalKey<NavigatorState>();

  instance.registerLazySingleton<ImagePicker>(ImagePicker.new);

  // Dio & ApiService

  Dio dio = DioFactory.getDio();

  instance
    ..registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio))
    ..registerLazySingleton<DirectionsService>(() => DirectionsService(dio))
    ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey)
    ..registerFactory<AppLogicCubit>(() => AppLogicCubit());
}

Future<void> _inithome() async {
  // //home repository
  instance
    ..registerLazySingleton<HomeRepositoryImplement>(
        () => HomeRepositoryImplement(
              instance(),
              instance(),
              instance(),
            ))
    ..registerFactory<OrderCubit>(() => OrderCubit(
          instance(),
        ));
}

Future<void> _initPlaces() async {
  final places = GoogleMapsPlaces(apiKey: EnvVariable.instance.mapKey);

  instance.registerLazySingleton<GoogleMapsPlaces>(() => places);

  instance.registerFactory<MapCubit>(() => MapCubit(
        instance(),
      ));
}

Future<void> _initLogin() async {
  instance.registerFactory<LoginBloc>(() => LoginBloc(
        instance(),
      ));
}

Future<void> _initSignInWithGoogleAndApple() async {
  instance
    ..registerLazySingleton<AuthenticationRepositoryImplement>(
        () => AuthenticationRepositoryImplement(instance()))
    ..registerLazySingleton<CompleteRegistrationProcessCubit>(
        () => CompleteRegistrationProcessCubit(
              instance(),
              instance(),
            ));
}

Future<void> _initSignUp() async {
  instance.registerFactory<SignUpBloc>(() => SignUpBloc(
        instance(),
        instance(),
      ));
}

// forget password
// verify code repositry
// New Password Repository
Future<void> _initForgetPassword() async {
  instance.registerLazySingleton<ForgetPasswordBloc>(
      () => ForgetPasswordBloc(instance(), instance(), instance()));
}

Future<void> _initLogOut() async {
  instance
    ..registerLazySingleton<ProfileRepositoryImplement>(
        () => ProfileRepositoryImplement(
              instance(),
            ))
    ..registerFactory<ChangeUserDeliveryImageCubit>(
        () => ChangeUserDeliveryImageCubit(
              instance(),
              instance(),
            ))
    ..registerFactory<LogOutCubit>(() => LogOutCubit(
          instance(),
        ));
}

Future<void> _initAccoutInformation() async {
  instance
      .registerFactory<AccountInformationCubit>(() => AccountInformationCubit(
            instance(),
          ));
}

Future<void> _initChangeEmailAddress() async {
  instance
      .registerFactory<ChangeEmailAddressCubit>(() => ChangeEmailAddressCubit(
            instance(),
          ));
}

Future<void> _initChangeMyPassword() async {
  instance.registerFactory<ChangeMyPasswordCubit>(() => ChangeMyPasswordCubit(
        instance(),
      ));
}

Future<void> _initNotification() async {
  instance
    ..registerLazySingleton<UserNotificationRepositoryImplement>(
        () => UserNotificationRepositoryImplement(instance()))
    ..registerFactory<UserNotificationCubit>(
        () => UserNotificationCubit(instance()));
}
