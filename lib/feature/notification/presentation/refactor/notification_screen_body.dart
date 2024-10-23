import 'package:driver/core/common/shared/shared_imports.dart';

/// [UserNotificationBody] is a StatelessWidget responsible for displaying the list of notifications.
/// It also handles the loading, error, and deletion states of user notifications.
class UserNotificationBody extends StatelessWidget {
  const UserNotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;
    return BlocBuilder<UserNotificationCubit, UserNotificationState>(
      builder: (context, state) {
        // Handle loading and error states with a common method
        if (state is UserNotificationLoading ||
            state is UserNotificationError) {
          return _userNotificationErrorAndLoadingState(responsive, isEnLocale);
        }

        // Handle the case when the notification list is empty
        if (context.read<UserNotificationCubit>().dataList.isEmpty) {
          return const EmptyNotificationsScreen();
        }

        // Get the notification data list from the UserNotificationCubit
        final userNotification = context.read<UserNotificationCubit>().dataList;

        return Stack(
          children: [
            // Display the list of notifications
            _userNotificationLoadedState(userNotification, responsive),

            // Show a loading indicator when a notification is being deleted
            state is DeleteUserNotificationLoading
                ? Center(
                    child: Container(
                      height: responsive.setHeight(10),
                      width: responsive.setWidth(22),
                      decoration: BoxDecoration(
                          color: ColorManger.brun,
                          borderRadius: BorderRadius.circular(
                              responsive.setBorderRadius(2))),
                      child: Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          color: ColorManger.white,
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        );
      },
    );
  }

  /// Displays the list of loaded notifications using a ListView.builder.
  /// Each notification can be slid to the left to reveal a delete action.
  Padding _userNotificationLoadedState(
      List<UserNotificationData> userNotification, ResponsiveUtils responsive) {
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

  /// Displays a shimmer effect for loading states or an error placeholder.
  Padding _userNotificationErrorAndLoadingState(
      ResponsiveUtils responsive, bool isEnLocale) {
    return Padding(
      padding: responsive.setPadding(
          left: isEnLocale ? 6 : 9, right: isEnLocale ? 9 : 6, top: 2),
      child: ListView.builder(
        itemCount: 12, // Arbitrary count for loading placeholders
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: responsive.setHeight(1.5),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: responsive.setHeight(5),
                  width: responsive.setWidth(11),
                  decoration: BoxDecoration(
                    color: ColorManger.brownLight,
                    borderRadius:
                        BorderRadius.circular(responsive.setBorderRadius(10)),
                  ),
                  child: Center(
                    child: Image.asset(
                      ImageAsset.orderDelivered,
                      height: responsive.setHeight(4),
                    ),
                  ),
                ),
                responsive.setSizeBox(width: 3),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Shimmer effect for loading title
                      LoadingShimmer(
                        height: responsive.setHeight(0.7),
                        width: double.infinity,
                      ),
                      responsive.setSizeBox(height: 0.5),
                      // Shimmer effect for loading description
                      LoadingShimmer(
                        height: responsive.setHeight(0.7),
                        width: responsive.setWidth(50),
                      ),
                      responsive.setSizeBox(height: 0.5),
                      LoadingShimmer(
                        height: responsive.setHeight(0.7),
                        width: responsive.setWidth(30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
