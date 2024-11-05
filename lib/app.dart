import 'package:device_preview/device_preview.dart';
import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class MyApp extends StatefulWidget {
  const MyApp._internal(); // private named constructor

  static const MyApp _instance = MyApp._internal(); // singleton instance
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 bool _isDependenciesLoaded = false;

  @override
  void initState() {
    super.initState();

    // Initialize connectivity controller to monitor internet status
    ConnectivityController.instance.init();

    // Listen to the connectivity changes and initialize services if connected
    ConnectivityController.instance.connectivityStream.listen((isConnected) {
      if (isConnected) {
        _initializeDependencies(); // Call initialization only when connected
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => instance<AppLogicCubit>()..getSavedLanguage(),
        ),
      ],
      child: StreamBuilder<bool>(
        stream: ConnectivityController.instance.connectivityStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child:
                  CircularProgressIndicator(), // Show loading while waiting for connection
            );
          }

          // If there's no internet, show the NoConnection screen
          if (snapshot.hasData && !snapshot.data!) {
            return const NoconnectionScreen();
          }



          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            useInheritedMediaQuery: true,
            builder: (context, child) {
              return BlocBuilder<AppLogicCubit, AppLogicState>(
                builder: (context, state) {
                  return MaterialApp(
                    locale:
                        Locale(context.read<AppLogicCubit>().currentLangCode),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    navigatorKey: instance<GlobalKey<NavigatorState>>(),
                    builder: DevicePreview.appBuilder,
                    title: context.read<AppLogicCubit>().currentLangCode == 'en'
                        ? 'driver Patisserie'
                        : 'حلوانى المنياوى',
                    debugShowCheckedModeBanner: false,
                    initialRoute: _getInitialRoute(),
                    onGenerateRoute: RouteGenerator.getRoute,
                    home: const HomeScreen(),
                    theme: getApplicationTheme(context),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  Future<void> _initializeDependencies() async {
    if (_isDependenciesLoaded) return;

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await FirebaseCloudMessaging().init();
    await LocalNotificationService.init();

    setState(() {
      _isDependenciesLoaded = true;
    });
  }

  // Extracted logic for determining the initial route
  String _getInitialRoute() {
    if (AppInitialRoute.isOnBoardingScreen) {
      if (AppInitialRoute.isLoggedInUser) {
        if (AppInitialRoute.isNextToCompleteRgister) {
          return Routes.completeRegister;
        } else {
          return Routes.bottomNavBarRoute;
        }
      } else {
        return Routes.loginRoute;
      }
    } else {
      return Routes.onBoardingRoute;
    }
  }
}
