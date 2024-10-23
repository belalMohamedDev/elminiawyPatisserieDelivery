import '../../../../../core/common/shared/shared_imports.dart'; //

class ProductBaseOnCategoryBody extends StatelessWidget {
  const ProductBaseOnCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
      child: Column(
        children: [
          const SearchRow(),
          SizedBox(
            height: 40.h,
          ),
          BlocBuilder<ProductBasedOnCategoryCubit, ProductBasedOnCategoryState>(
            buildWhen: (previous, current) =>
                current is GetProductBasedOnCategoryError ||
                current is GetProductBasedOnCategoryLoading ||
                current is GetProductBasedOnCategorySuccess,
            builder: (context, state) {
              return state.maybeWhen(getProductLoading: () {
                return Expanded(
                  child: Column(
                    children: [
                      _subCategoryLoadingAndErrorState(),
                      const Expanded(child: ProductGridViewLoadingState()),
                    ],
                  ),
                );
              }, getProductSuccess: (getProduct) {
                return Column(
                  children: [
                    _subCategorySuccessState(context),
                    SizedBox(
                      height: 40.h,
                    ),
                  ],
                );
              }, orElse: () {
                return const SizedBox.shrink();
              });
            },
          ),
          BlocBuilder<ProductBasedOnCategoryCubit, ProductBasedOnCategoryState>(
            buildWhen: (previous, current) =>
                current is FilterProductListSuccess,
            builder: (context, state) {
              return state.maybeWhen(
                filterProductListSuccess: (productList) {
                  return ProductGridViewSuccessState(
                      allProductList: productList);
                },
                orElse: () {
                  return const SizedBox.shrink();
                },
              );
            },
          )
        ],
      ),
    );
  }
}

SizedBox _subCategorySuccessState(BuildContext context) {
  bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

  final productBasedOnCategoryCubit =
      context.read<ProductBasedOnCategoryCubit>();
  return SizedBox(
    height: 40.h,
    child: ListView.builder(
      addAutomaticKeepAlives: true,
      itemCount: productBasedOnCategoryCubit.subCategoryProductData!.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
              right: isEnLocale ? 8.w : 0, left: isEnLocale ? 0 : 8.w),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  productBasedOnCategoryCubit.getProductList(
                    subCategoryId: productBasedOnCategoryCubit
                            .subCategoryProductData![index].id ??
                        '',
                  );
                  productBasedOnCategoryCubit.changeCategoryIndex(index: index);
                },
                child: BlocBuilder<ProductBasedOnCategoryCubit,
                    ProductBasedOnCategoryState>(
                  builder: (context, state) {
                    return Container(
                      height: 35.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color:
                              productBasedOnCategoryCubit.categoryIndex == index
                                  ? ColorManger.brown
                                  : ColorManger.brownLight),
                      child: Center(
                        child: Text(
                            index == 0
                                ? isEnLocale
                                    ? productBasedOnCategoryCubit
                                        .subCategoryProductData![index].title!
                                    : 'كل المنتجات'
                                : productBasedOnCategoryCubit
                                    .subCategoryProductData![index].title!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontFamily:
                                        FontConsistent.geLocalozedFontFamily(),
                                    color: productBasedOnCategoryCubit
                                                .categoryIndex ==
                                            index
                                        ? ColorManger.white
                                        : ColorManger.brun,
                                    fontSize: 12.sp)),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}

SizedBox _subCategoryLoadingAndErrorState() {
  return SizedBox(
    height: 100.h,
    child: ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Column(
            children: [
              LoadingShimmer(
                height: 35.h,
                width: 100.w,
                borderRadius: 8.r,
              ),
              SizedBox(
                height: 12.h,
              ),
              LoadingShimmer(
                width: 40.w,
                height: 8.h,
                borderRadius: 8.r,
              ),
            ],
          ),
        );
      },
    ),
  );
}
