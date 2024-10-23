import '../../../../../core/common/shared/shared_imports.dart'; //

class FirebaseMessagingNavigator {
  // Handle notification when the app is in the foreground
  static Future<void> foreGroundHandler(RemoteMessage? remoteMessage) async {
    if (remoteMessage != null) {
      // Show local notification
      await LocalNotificationService.showSimpleNotification(
        title: remoteMessage.notification?.title ?? 'No Title',
        body: remoteMessage.notification?.body ?? 'No Body',
      );
    }
  }
}
