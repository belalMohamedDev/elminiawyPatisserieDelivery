import '../../../../../core/common/shared/shared_imports.dart'; // Shared imports for project utilities

/// `HomeScreen` is a `StatefulWidget` that manages the display of the home screen
/// and handles notification services. It integrates Firebase Cloud Messaging
/// for receiving notifications and interacts with the `MapCubit` for setting
/// the user's location to "Home".

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

/// The state class `_HomeScreenState` manages the notification service,
/// initializes it during the lifecycle, and handles the screen's main UI.
class _HomeScreenState extends State<HomeScreen> {
  // NotificationService instance to handle notifications throughout the app
  late final NotificationService _notificationService;

  @override
  void initState() {
    super.initState();

    // Initialize the NotificationService with a repository and notification callback
    _notificationService = NotificationService(
      instance<
          UserNotificationRepositoryImplement>(), // Inject the user notification repository
    );

    // Delay the execution until after the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Retrieve the saved username from secure shared preferences
      // Call MapCubit's function to set the location to "Home"
      context.read<MapCubit>().setLocationToHome();

      // If the username is present, start listening and fetching notifications
      if (!AppInitialRoute.isAnonymousUser) {
        _notificationService
            .fetchNotificationsContinuously(); // Continuously fetch notifications
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // The Scaffold represents the main structure of the home screen
    return Scaffold(
      // Pass the notification service to the body of the home screen
      body: SafeArea(
        child: HomeBody(
          notificationService:
              _notificationService, // Inject the notification service into the body
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Stop fetching notifications when the widget is disposed (e.g., user navigates away)
    _notificationService.stopFetchingNotifications();
    super.dispose();
  }
}
