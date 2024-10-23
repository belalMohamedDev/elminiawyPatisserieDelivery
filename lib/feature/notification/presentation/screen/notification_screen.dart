import 'package:driver/core/common/shared/shared_imports.dart';

/// [UserNotificationScreen] is a StatefulWidget that displays user notifications.
/// It fetches notifications when the screen is initialized and marks all as seen.
class UserNotificationScreen extends StatefulWidget {
  const UserNotificationScreen({super.key});

  @override
  State<UserNotificationScreen> createState() => _UserNotificationScreenState();
}

class _UserNotificationScreenState extends State<UserNotificationScreen> {
  /// Initializes the state and triggers the notifications fetching and update.
  @override
  void initState() {
    super.initState();

    // Using a post frame callback to ensure it runs after the first frame is rendered.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // If the user name is not empty, mark all notifications as seen.

      await Future.wait([
        context.read<UserNotificationCubit>().updateAllNotificationsToSeen()
      ]);
    });
  }

  /// Builds the main structure of the notification screen, including the app bar and body.
  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.translate(AppStrings.notification),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: responsive.setTextSize(4)), // Responsive font size
        ),
      ),
      // Body content of the screen, showing notifications to the user.
      body: const UserNotificationBody(),
    );
  }
}
