
import '../../../../../core/common/shared/shared_imports.dart'; // Shared imports for project utilities

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MapCubit>().loadMapStyle();
  }

  @override
  Widget build(BuildContext context) {
    final mapCuibt = context.read<MapCubit>();
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMapWidget(
              mapCubit: mapCuibt,
            ),
          ),
          Positioned(
            top: responsive.setHeight(8),
            left: responsive.setWidth(3),
            right: responsive.setWidth(3),
            child: Container(
              height: responsive.setHeight(10.2),
              width: responsive.screenWidth,
              decoration: BoxDecoration(
                  color: ColorManger.backgroundItem,
                  borderRadius:
                      BorderRadius.circular(responsive.setBorderRadius(2))),
              child: Padding(
                padding: responsive.setPadding(left: 3.5, top: 1.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: responsive.setPadding(bottom: 1.8, right: 3),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.check_rounded,
                                color: ColorManger.white,
                              ),
                            ),
                          ),
                          responsive.setSizeBox(width: 3),
                          CircleAvatar(
                            backgroundColor: ColorManger.redError,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.close_rounded,
                                color: ColorManger.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    responsive.setSizeBox(width: 7),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Belal Mohamed Elsayed',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontSize: responsive.setTextSize(4.2),
                                ),
                          ),
                          responsive.setSizeBox(height: 1.2),
                          Row(
                            children: [
                              _buildInfoContainer(
                                context,
                                icon: IconlyBold.send,
                                text: "1Km",
                                responsive: responsive,
                              ),
                              const Spacer(),
                              _buildInfoContainer(
                                context,
                                icon: IconlyBold.timeCircle,
                                text: "12:00",
                                responsive: responsive,
                              ),
                              const Spacer(),
                              _buildInfoContainer(
                                context,
                                icon: IconlyBold.discount,
                                text: "54",
                                responsive: responsive,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoContainer(BuildContext context,
      {required IconData icon,
      required String text,
      required ResponsiveUtils responsive}) {
    return Container(
      height: responsive.setHeight(3),
      width: responsive.setWidth(18),
      decoration: BoxDecoration(
        color: ColorManger.brownLight,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: responsive.setTextSize(3),
                ),
          ),
          responsive.setSizeBox(width: 1),
          Icon(
            icon,
            color: ColorManger.brun,
            size: responsive.setIconSize(4),
          ),
        ],
      ),
    );
  }
}
