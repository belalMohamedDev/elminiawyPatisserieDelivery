

import '../../../../../core/common/shared/shared_imports.dart'; //

abstract class UserNotificationRepository {
  Future<ApiResult<UserNotificationResponse>> getAllUserNotificationRepo();
  Future<ApiResult<UserNotificationResponse>>
      updateAllUserNotificationToSeenRepo();
  Future<ApiResult<UserNotificationResponse>> deleteUserNotificationRepo(
      String id);
}

class UserNotificationRepositoryImplement
    implements UserNotificationRepository {
  UserNotificationRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;


  @override
  Future<ApiResult<UserNotificationResponse>>
      getAllUserNotificationRepo() async {

      try {
        final response = await _apiService.getAllNotificationToUserService();
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
  
  }

  @override
  Future<ApiResult<UserNotificationResponse>>
      updateAllUserNotificationToSeenRepo() async {

      try {
        final response = await _apiService.updateAllNotificationToSeenService();
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
  
  }

  @override
  Future<ApiResult<UserNotificationResponse>> deleteUserNotificationRepo(
      String id) async {
   
      try {
        final response = await _apiService.deleteUserNotificationService(id);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
  
  }
}
