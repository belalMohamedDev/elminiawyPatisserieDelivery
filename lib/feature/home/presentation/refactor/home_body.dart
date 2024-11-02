import '../../../../../core/common/shared/shared_imports.dart'; // Shared imports for project utilities

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
   // final responsive = ResponsiveUtils(context);
    final mapCuibt = context.read<MapCubit>();

    return Stack(
      children: [
        GoogleMapWidget(
          mapCubit: mapCuibt,
        ),
      ],
    );
  }
}
