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
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.
    final responsive = ResponsiveUtils(context);
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: 55.w, right: 55.w, top: 20.h, bottom: 30.h),
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
              ],
              labelColor: ColorManger.white, // Text color of selected tab
              unselectedLabelColor: ColorManger.white,
              unselectedLabelStyle: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: responsive.setTextSize(4)),
              labelStyle: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: responsive.setTextSize(4)),

              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: isEnLocale
                      ? Radius.circular(_tabController.index == 0 ? 8.r : 0.r)
                      : Radius.circular(_tabController.index == 0 ? 0.r : 8.r),
                  bottomLeft: isEnLocale
                      ? Radius.circular(_tabController.index == 0 ? 8.r : 0.r)
                      : Radius.circular(_tabController.index == 0 ? 0.r : 8.r),
                  bottomRight: isEnLocale
                      ? Radius.circular(_tabController.index == 1 ? 8.r : 0.r)
                      : Radius.circular(_tabController.index == 1 ? 0.r : 8.r),
                  topRight: isEnLocale
                      ? Radius.circular(_tabController.index == 1 ? 8.r : 0.r)
                      : Radius.circular(_tabController.index == 1 ? 0.r : 8.r),
                ),
                color: ColorManger.brun,
              ), // Remove default indicator
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              BlocBuilder<PaymentCubit, PaymentState>(
                builder: (context, state) {
                  if (state is GetCompleteOrdersSuccess) {
                    if (context.read<PaymentCubit>().getCurrentOrders.isEmpty) {
                      return const EmptyOrderScreen();
                    }
                    return OrdersTab(
                      getOrdersResponseData:
                          context.read<PaymentCubit>().getCurrentOrders,
                    );
                  }

                  return ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, right: 20.w, bottom: 15.h),
                          child: _cardItemLoading(),
                        );
                      });
                },
              ),
              BlocBuilder<PaymentCubit, PaymentState>(
                builder: (context, state) {
                  if (state is GetCompleteOrdersSuccess) {
                    if (context
                        .read<PaymentCubit>()
                        .getPerviousOrders
                        .isEmpty) {
                      return const EmptyOrderScreen(
                        isCurrentOrder: false,
                      );
                    }
                    return OrdersTab(
                      getOrdersResponseData:
                          context.read<PaymentCubit>().getPerviousOrders,
                    );
                  }

                  return ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, right: 20.w, bottom: 15.h),
                          child: _cardItemLoading(),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Container _cardItemLoading() {
    return Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManger.backgroundItem,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 10.w,
          ),
          Image.asset(
            ImageAsset.picture,
            height: 40.h,
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoadingShimmer(
                height: 4.h,
                width: 220.w,
                borderRadius: 12.r,
              ),
              SizedBox(
                height: 10.h,
              ),
              LoadingShimmer(
                height: 4.h,
                width: 140.w,
                borderRadius: 12.r,
              ),
              SizedBox(
                height: 10.h,
              ),
              LoadingShimmer(
                height: 4.h,
                width: 80.w,
                borderRadius: 12.r,
              ),
            ],
          )
        ],
      ),
    );
  }
}
