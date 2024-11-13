import 'package:driver/core/common/shared/shared_imports.dart';

class UserNotificationBody extends StatelessWidget {
  const UserNotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserNotificationCubit, UserNotificationState>(
      builder: (context, state) {
        if (state is UserNotificationLoading ||
            state is UserNotificationError ||
            context.read<UserNotificationCubit>().dataList.isEmpty) {
          return const EmptyNotificationsScreen();
        }

        if (state is DeleteUserNotificationLoading) {
          return const LoadingOverlay(isLoading: true);
        }

        return _userNotificationLoadedState(context);
      },
    );
  }

  Padding _userNotificationLoadedState(BuildContext context) {
    final userNotification = context.read<UserNotificationCubit>().dataList;
    final responsive = ResponsiveUtils(context);
    return Padding(
      padding: responsive.setPadding(left: 4, right: 4, top: 2),
      child: ListView.builder(
        addAutomaticKeepAlives: true,
        itemCount: userNotification.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: responsive.setHeight(8),
                child: Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      // Slidable action for deleting a notification
                      SlidableAction(
                        onPressed: (_) {
                          // Trigger the deletion of a notification
                          context
                              .read<UserNotificationCubit>()
                              .deleteUserNotification(
                                  userNotification[index].sId!);
                        },
                        backgroundColor: ColorManger.redError,
                        foregroundColor: ColorManger.white,
                        icon: IconlyBold.delete,
                        label: context.translate(AppStrings.delete),
                      ),
                    ],
                  ),
                  // Display notification content
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: responsive.setHeight(5),
                        width: responsive.setWidth(11),
                        decoration: BoxDecoration(
                          color: ColorManger.brownLight,
                          borderRadius: BorderRadius.circular(
                              responsive.setBorderRadius(10)),
                        ),
                        child: Center(
                          child: Image.asset(
                            ImageAsset.orderDelivered,
                            height: responsive.setHeight(4),
                          ),
                        ),
                      ),
                      responsive.setSizeBox(width: 3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Notification title
                          Text(
                            userNotification[index].notificationId == null
                                ? ""
                                : userNotification[index]
                                    .notificationId!
                                    .title!,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontSize: responsive.setTextSize(4)),
                          ),
                          // Notification description
                          ConstrainedBox(
                            constraints: BoxConstraints(
                                maxWidth: responsive.setWidth(80)),
                            child: Text(
                              userNotification[index].notificationId == null
                                  ? ""
                                  : userNotification[index]
                                      .notificationId!
                                      .description!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: responsive.setTextSize(3)),
                              maxLines: 1,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              responsive.setSizeBox(height: 2),
            ],
          );
        },
      ),
    );
  }
}
