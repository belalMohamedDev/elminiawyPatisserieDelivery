import 'package:device_preview/device_preview.dart';

import '../../../../../core/common/shared/shared_imports.dart'; //

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize environment variables
  await EnvVariable.instance.init();

  await SharedPrefHelper.getInstancePreferences().whenComplete(
    () async {
      await AppInitialRoute().getStoreDataAndCheckInitialRoute();
    },
  );

  await initAppModule();
  


  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}
