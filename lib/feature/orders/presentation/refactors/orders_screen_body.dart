import '../../../../../core/common/shared/shared_imports.dart'; //

class MyOrdersBody extends StatefulWidget {
  const MyOrdersBody({super.key});

  @override
  State<MyOrdersBody> createState() => _MyOrdersBodyState();
}

class _MyOrdersBodyState extends State<MyOrdersBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return Padding(
      padding:
          EdgeInsets.only(left: 12.w, right: 12.w, top: 20.h, bottom: 30.h),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.profile);
                },
                child: Container(
                  height: responsive.setHeight(6.5),
                  width: responsive.setWidth(14),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(responsive.setBorderRadius(50)),
                      color: ColorManger.brun),
                  child: Center(
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(responsive.setBorderRadius(50)),
                      child: context
                                  .read<ChangeUserDeliveryImageCubit>()
                                  .initialUserImage ==
                              null
                          ? Image.asset(
                              ImageAsset.guestIconGreen,
                              color: ColorManger.brun,
                              height: 30.h,
                            )
                          : CachedNetworkImage(
                              imageUrl: context
                                  .read<ChangeUserDeliveryImageCubit>()
                                  .initialUserImage!,
                              fit: BoxFit.fitHeight,
                              width: responsive.setWidth(13),
                              cacheManager: CustomCacheManager.instance,
                              height: responsive.setHeight(6),
                              placeholder: (context, url) => LoadingShimmer(
                                    height: responsive.setHeight(
                                        15), // Placeholder height while loading
                                    width: responsive.setWidth(
                                        89), // Placeholder width while loading
                                    borderRadius: responsive.setBorderRadius(
                                        2), // Placeholder border radius
                                  ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error)),
                    ),
                  ),
                ),
              ),
              responsive.setSizeBox(width: 3),
              Text(
                context.translate(
                    AppStrings.welcomeBackLetsAchieveGreatThingsToday),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: responsive.setTextSize(4),
                    ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.notification);
                },
                child: Container(
                    height: responsive.setHeight(4.2),
                    width: responsive.setWidth(9.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            responsive.setBorderRadius(50)),
                        color: ColorManger.brun),
                    child: Icon(
                      IconlyBold.notification,
                      color: ColorManger.white,
                    )),
              ),
              responsive.setSizeBox(width: 3),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 8.h),
            child: Container(
              decoration: BoxDecoration(
                  color: ColorManger.brunLight,
                  borderRadius: BorderRadius.circular(8.r)),
              child: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(
                    text: context.translate(AppStrings.currentOrders),
                  ),
                  Tab(text: context.translate(AppStrings.previousOrders)),
                  Tab(text: context.translate(AppStrings.cancelledOrders)),
                ],
                labelColor: ColorManger.white, // Text color of selected tab
                unselectedLabelColor: ColorManger.white,
                unselectedLabelStyle: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: responsive.setTextSize(3)),
                labelStyle: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: responsive.setTextSize(3)),

                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: isEnLocale
                        ? Radius.circular(_tabController.index == 2 ? 8.r : 0.r)
                        : Radius.circular(
                            _tabController.index == 2 ? 8.r : 0.r),
                    bottomLeft: isEnLocale
                        ? Radius.circular(_tabController.index == 2 ? 0.r : 8.r)
                        : Radius.circular(
                            _tabController.index == 2 ? 8.r : 0.r),
                    bottomRight: isEnLocale
                        ? Radius.circular(_tabController.index == 0 ? 0.r : 8.r)
                        : Radius.circular(
                            _tabController.index == 0 ? 8.r : 0.r),
                    topRight: isEnLocale
                        ? Radius.circular(_tabController.index == 0 ? 0.r : 8.r)
                        : Radius.circular(
                            _tabController.index == 0 ? 8.r : 0.r),
                  ),
                  color: ColorManger.brun,
                ), // Remove default indicator
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                CurrentOrders(),
                PreviousOrders(),
                CancelledOrders(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
