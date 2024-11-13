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
          BlocBuilder<ChangeUserDeliveryImageCubit,
              ChangeUserDeliveryImageState>(
            builder: (context, state) {
              return Row(
                children: [
                  Container(
                    height: responsive.setHeight(6.5),
                    width: responsive.setWidth(14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            responsive.setBorderRadius(50)),
                        color: ColorManger.brunLight),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            responsive.setBorderRadius(50)),
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
                  responsive.setSizeBox(width: 3),
                  Text(
                    context.translate(
                        AppStrings.welcomeBackLetsAchieveGreatThingsToday),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: responsive.setTextSize(4),
                        ),
                  ),
                  const Spacer(),
                  Container(
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
                  responsive.setSizeBox(width: 3),
                ],
              );
            },
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
                Center(
                  child: Text('Previous Orders Placeholder'),
                ), // استبدل المحتوى بالويدجيت الفعلي
                Center(
                  child: Text('Cancelled Orders Placeholder'),
                ), // استبدل المحتوى بالويدجيت الفعلي
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

class CurrentOrders extends StatelessWidget {
  const CurrentOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    final mapCubit = context.read<MapCubit>();

    return BlocConsumer<OrderCubit, OrderState>(
      listener: (context, state) async {},
      builder: (context, state) {
        final orderCubit = context.read<OrderCubit>();

        return ListView.builder(
          itemCount: orderCubit.orders.length,
          itemBuilder: (context, index) {
            final order = orderCubit.orders[index];
            final isExpanded = orderCubit.expandedIndex == index;

            return Padding(
              padding: EdgeInsets.only(
                bottom: 10.h,
              ),
              child: GestureDetector(
                onTap: () => orderCubit.togelExpandedBottomSheet(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: isExpanded
                      ? responsive.setHeight(23.5)
                      : responsive.setHeight(10.2),
                  width: responsive.screenWidth,
                  child: Slidable(
                    endActionPane: ActionPane(
                      motion: const BehindMotion(),
                      children: [
                        responsive.setSizeBox(width: 1.5),
                        SlidableAction(
                          onPressed: (_) async {
                            Position? position = await mapCubit
                                .getDriverCurrentLocation(context);
                            if (position != null) {
                              context.read<OrderCubit>().fetchCanceledOrders(
                                    order.sId!,
                                    '${position.latitude}',
                                    '${position.longitude}',
                                  );
                            }
                          },
                          backgroundColor: ColorManger.redError,
                          foregroundColor: ColorManger.white,
                          icon: IconlyBold.delete,
                          borderRadius: BorderRadius.circular(
                              responsive.setBorderRadius(2)),
                        ),
                        responsive.setSizeBox(width: 1.5),
                        SlidableAction(
                          onPressed: (context) {
                            context
                                .read<OrderCubit>()
                                .fetchAcceptOrders(order.sId!);
                          },
                          backgroundColor: ColorManger.green,
                          foregroundColor: ColorManger.white,
                          icon: Icons.check_rounded,
                          borderRadius: BorderRadius.circular(
                              responsive.setBorderRadius(2)),
                        ),
                      ],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorManger.brunLight,
                        borderRadius: BorderRadius.circular(
                            responsive.setBorderRadius(2)),
                      ),
                      child: Padding(
                        padding: responsive.setPadding(
                            left: 3, top: 2, bottom: 1, right: 3),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                order.shippingAddress!.region!,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: responsive.setTextSize(3),
                                    ),
                              ),
                              responsive.setSizeBox(height: 1.5),
                              if (isExpanded) ...[
                                buildRow(
                                  context,
                                  icon: Icons.house_rounded,
                                  text: order.shippingAddress!.buildingName!,
                                ),
                                responsive.setSizeBox(height: 1.5),
                                buildRow(
                                  context,
                                  icon: Icons.radar_outlined,
                                  text: order.shippingAddress!.streetName!,
                                ),
                                responsive.setSizeBox(height: 1.5),
                                buildRow(
                                  context,
                                  icon: Icons.phone_android_rounded,
                                  text: order.shippingAddress!.phone!,
                                ),
                              ],
                              if (isExpanded) ...[
                                responsive.setSizeBox(height: 3),
                              ],
                              Row(
                                children: [
                                  _buildInfoContainer(
                                    context,
                                    icon: IconlyBold.send,
                                    text: order.distance!,
                                  ),
                                  responsive.setSizeBox(width: 2),
                                  _buildInfoContainer(
                                    context,
                                    icon: IconlyBold.timeCircle,
                                    text: order.duration!,
                                  ),
                                  responsive.setSizeBox(width: 2),
                                  _buildInfoContainer(
                                    context,
                                    icon: IconlyBold.discount,
                                    text: '${order.totalOrderPrice}',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget buildRow(BuildContext context,
      {required IconData icon, required String text, double? textSize}) {
    final responsive = ResponsiveUtils(context);
    return Row(
      children: [
        Icon(
          icon,
          color: ColorManger.white,
          size: responsive.setIconSize(5),
        ),
        responsive.setSizeBox(width: 4),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: responsive.setTextSize(textSize ?? 3.5),
                ),
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoContainer(
    BuildContext context, {
    VoidCallback? onPressed,
    required IconData icon,
    required String text,
    bool isCardInformation = false,
  }) {
    final responsive = ResponsiveUtils(context);
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: responsive.setHeight(isCardInformation ? 4.2 : 3),
          width: isCardInformation
              ? responsive.setWidth(29)
              : responsive.setWidth(20),
          decoration: BoxDecoration(
            color: isCardInformation
                ? ColorManger.orangeColor
                : ColorManger.brownLight,
            borderRadius: BorderRadius.circular(
                responsive.setBorderRadius(isCardInformation ? 5 : 1.2)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: ColorManger.white,
                size: responsive.setIconSize(isCardInformation ? 5 : 4),
              ),
              responsive.setSizeBox(width: 1.5),
              Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize:
                          responsive.setTextSize(isCardInformation ? 4 : 3),
                    ),
                textAlign: TextAlign.start,
              ),
            ],
          )),
    );
  }
}
