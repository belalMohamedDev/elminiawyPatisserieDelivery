import '../../../../../core/common/shared/shared_imports.dart'; // Shared imports for project utilities

class NotificationService {
  NotificationService(this._repository);

  final UserNotificationRepositoryImplement _repository;

  final StreamController<UserNotificationResponse> _notificationController =
      StreamController<UserNotificationResponse>.broadcast();
  Timer? _timer;

  Stream<UserNotificationResponse> get notificationStream =>
      _notificationController.stream;

  void fetchNotificationsContinuously() {
    _timer = Timer.periodic(const Duration(minutes: 5), (timer) async {
      try {
        final response = await _fetchNotifications();
        if (!_notificationController.isClosed) {
          _notificationController.sink.add(response);
        }
      } catch (error) {
        if (!_notificationController.isClosed) {
          _notificationController.sink
              .addError('Failed to fetch notifications: $error');
        }
      }
    });
  }

  Future<UserNotificationResponse> _fetchNotifications() async {
    final result = await _repository.getAllUserNotificationRepo();

    return result.when(
      success: (data) => data,
      failure: (error) {
        throw Exception('Failed to fetch notifications: ${error.message}');
      },
    );
  }

  void stopFetchingNotifications() {
    _timer?.cancel();
    if (!_notificationController.isClosed) {
      _notificationController.close();
    }
  }
}

