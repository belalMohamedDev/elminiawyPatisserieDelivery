import '../../../../../core/common/shared/shared_imports.dart'; // Shared imports for project utilities
import 'package:badges/badges.dart' as badges;

/// `HomeBody` is a `StatelessWidget` that provides the main content of the home screen.
/// It includes location details, a notification icon with a badge for unread notifications,
/// a search bar, and product display sections.

class HomeBody extends StatelessWidget {
  // The notification service to handle receiving and displaying notifications
  final NotificationService notificationService;
  const HomeBody({
    super.key,
    required this.notificationService,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Padding(
      padding: responsive.setPadding(left: 5.5, right: 5.5, bottom: 2),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display the location and notification row at the top
              _locationAndNotificationRow(context),
              // Show the location name for the home screen
              _locationName(context),
              responsive.setSizeBox(height: 3), // Adds vertical space
              const SearchRow(), // Search bar row
              responsive.setSizeBox(height: 4), // Adds vertical space
              const BannerCarouselSlider(), // Image carousel for banners
              responsive.setSizeBox(height: 4), // Adds vertical space
              const CategoryListViewBuilder(), // Horizontal list view for categories
              const NewProductGrideView(), // Grid view for displaying new products
            ],
          ),
        ),
      ),
    );
  }

  /// Widget to display the user's current location with an option to navigate
  /// to the `MapScreen` to select a new location.
  InkWell _locationName(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return InkWell(
      onTap: () {
        // Navigate to the MapScreen to select a new location
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (context) => BlocProvider.value(
              value: instance<MapCubit>(), // Provide MapCubit to the MapScreen
              child: const MapScreen(isHomeMap: true), // Display home map
            ),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            IconlyBold.location,
            color: ColorManger.brun,
            size: responsive.setIconSize(5),
          ), // Location icon
          SizedBox(width: responsive.setWidth(2)), // Horizontal spacing
          // Display the current address from the MapCubit
          BlocBuilder<MapCubit, MapState>(
            builder: (context, state) {
              return ConstrainedBox(
                constraints: BoxConstraints(maxWidth: responsive.setWidth(40)),
                child: Text(
                  context
                      .read<MapCubit>()
                      .homeScreenCurrentAddress, // Display address
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: responsive.setTextSize(3.5),
                      ),
                ),
              );
            },
          ),
          SizedBox(width: responsive.setWidth(1)), // Horizontal spacing
          // Icon to indicate dropdown or expandable content
          Icon(
            IconlyBold.arrowDown2,
            color: Colors.black38,
            size: responsive.setIconSize(4),
          ),
        ],
      ),
    );
  }

  /// Widget that displays the location label and the notification icon.
  /// The notification icon shows a badge if there are unread notifications.
  Row _locationAndNotificationRow(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Row(
      children: [
        SizedBox(width: responsive.setWidth(2)), // Horizontal space
        // Display the location label
        Text(
          context.translate(AppStrings.location),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: responsive.setTextSize(4),
              ),
        ),
        const Spacer(), // Spacer to push the notification icon to the right
        // ValueListenableBuilder to listen for notification updates
        StreamBuilder<UserNotificationResponse>(
          stream: notificationService.notificationStream, // Notification stream
          builder: (context, snapshot) {
            if (!snapshot.hasData || snapshot.data == null) {
              // If no notifications, show a plain notification icon
              return IconButton(
                onPressed: () {
                  // if (AppInitialRoute.isAnonymousUser) {
                  //   Navigator.of(context, rootNavigator: !false)
                  //       .pushNamed(Routes.noRoute);
                  // } else {
                  //   Navigator.of(context, rootNavigator: !false).pushNamed(
                  //       Routes.notification); // Navigate to notification screen
                  // }
                },
                icon: Icon(
                  IconlyBold.notification,
                  color: ColorManger.brun,
                ),
              );
            }

            // Calculate the number of unread notifications
            final numberOfNotification = snapshot.data!.data!
                .where((element) => element.isSeen == false)
                .length;

            // Display a badge with the count of unread notifications
            return badges.Badge(
              showBadge: numberOfNotification !=
                  0, // Show badge if there are unread notifications
              badgeAnimation: const badges.BadgeAnimation.scale(),
              position: badges.BadgePosition.topEnd(
                end: numberOfNotification >= 9 ? 8.w : 10.w,
                top: numberOfNotification >= 9 ? 4.h : 5.h,
              ),
              badgeStyle: badges.BadgeStyle(
                padding: EdgeInsets.all(
                  numberOfNotification >= 9 ? 4.h : 5.5.h,
                ),
              ),
              // Show "+9" if more than 9 unread notifications, else show the count
              badgeContent: Text(
                numberOfNotification >= 9 ? '+9' : '$numberOfNotification',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontFamily: FontConsistent.fontFamilyAcme,
                      color: ColorManger.white,
                      fontSize: numberOfNotification >= 9 ? 8.sp : 10.sp,
                    ),
              ),
              // Notification icon button
              child: IconButton(
                onPressed: () {
                  context.pushNamed(
                      Routes.notification); // Navigate to notification screen
                },
                icon: Icon(
                  IconlyBold.notification,
                  color: ColorManger.brun,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
