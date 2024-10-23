import 'package:driver/core/network/failure/api_error_model.dart';
import 'package:driver/feature/notification/data/model/user_notification_resp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/repository/user_notification_repo.dart';

part 'user_notification_state.dart';
part 'user_notification_cubit.freezed.dart';

class UserNotificationCubit extends Cubit<UserNotificationState> {
  List<UserNotificationData> dataList = [];

  UserNotificationCubit(this._repository)
      : super(const UserNotificationState.initial());

  final UserNotificationRepositoryImplement _repository;

  Future<void> updateAllNotificationsToSeen() async {
    emit(const UserNotificationState.userNotificationLoading());

    final result = await _repository.updateAllUserNotificationToSeenRepo();

    result.when(
      success: (data) {
        dataList = [];
        dataList.addAll(data.data!);
        emit(UserNotificationState.userNotificationLoaded(data));
      },
      failure: (error) {
        emit(UserNotificationState.userNotificationError(error));
      },
    );
  }

  Future<void> deleteUserNotification(String id) async {
    emit(const UserNotificationState.deleteUserNotificationLoading());

    final result = await _repository.deleteUserNotificationRepo(id);

    result.when(
      success: (data) {
        dataList = [];
        dataList.addAll(data.data!);

        emit(UserNotificationState.deleteUserNotificationLoaded(data));
      },
      failure: (error) {
        emit(UserNotificationState.deleteUserNotificationError(error));
      },
    );
  }
}
