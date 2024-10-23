import '../../../../core/common/shared/shared_imports.dart'; // Import the shared dependencies

/// A stateless widget that displays a grid view of products.
/// This widget is used when the product list is successfully retrieved.
class ProductGridViewSuccessState extends StatelessWidget {
  final List<DataProductResponse>? dataList; // List of products from the API
  final bool isSearchActive; // Indicates if the search is active
  final List<WishListProductData>? wishListData; // Wishlist product data
  final List<Products>? allProductList; // Complete list of products

  final int? grideViewIndex; // Index for how many items to show
  final ScrollPhysics? physics; // Scroll physics for the grid view

  const ProductGridViewSuccessState({
    super.key,
    this.dataList,
    this.isSearchActive = false,
    this.grideViewIndex,
    this.physics,
    this.wishListData,
    this.allProductList,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    // Determine which list to display (dataList, wishListData, or allProductList)
    final List displayList = (dataList ?? wishListData ?? allProductList ?? []);

    final int maxItemCount = displayList.length;

    // If grideViewIndex is provided and less than max items, show limited items
    final int itemCount =
        (grideViewIndex != null && grideViewIndex! <= maxItemCount)
            ? grideViewIndex!
            : maxItemCount;

    return GridView.count(
      addAutomaticKeepAlives: true,
      shrinkWrap: true,
      physics: physics,
      crossAxisCount: 2, // Number of columns in the grid
      crossAxisSpacing: 12, // Spacing between grid items
      mainAxisSpacing: 15, // Spacing between grid rows
      childAspectRatio: 0.7, // Aspect ratio for grid items
      children: List.generate(
        itemCount,
        (index) => InkWell(
          onTap: () =>
              showSortBottomSheet(context, index, displayList, responsive),
          child: Container(
            decoration: BoxDecoration(
              color: ColorManger.backgroundItem, // Background color of the item
              borderRadius:
                  BorderRadius.circular(responsive.setBorderRadius(2)),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image and wishlist icon
                    _wishListAndImageStack(
                        context, index, displayList, responsive, isEnLocale),
                    // Product title and information
                    _productTitleAndSomeInformationText(
                        responsive, displayList, index, context, isEnLocale)
                  ],
                ),
                // Add to order button
                _addOrderButton(
                    context, displayList, index, responsive, isEnLocale)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the add-to-cart button and handles the loading state for the add-to-cart action.
  Positioned _addOrderButton(BuildContext context, List<dynamic> displayList,
      int index, ResponsiveUtils responsive, bool isEnLocale) {
    return Positioned(
      bottom: 0,
      right: isEnLocale ? 0 : null,
      left: isEnLocale ? null : 0,
      child: InkWell(
        onTap: () {
          // Add product to cart using CartCubit
          context.read<CartCubit>().addItemToCart(displayList[index].sId!);
        },
        child: Container(
          height: responsive.setHeight(4),
          width: responsive.setWidth(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                      responsive.setBorderRadius(isEnLocale ? 0 : 2)),
                  bottomRight: Radius.circular(
                      responsive.setBorderRadius(isEnLocale ? 2 : 0))),
              color: ColorManger.brun),
          child: BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              // Show loading spinner if the product is being added to cart
              return state.maybeWhen(
                addItemToCartLoading: (id) {
                  if (id == displayList[index].sId!) {
                    return Center(
                      child: SizedBox(
                        height: responsive.setHeight(2),
                        width: responsive.setWidth(4),
                        child: const CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2.0,
                        ),
                      ),
                    );
                  } else {
                    return Icon(Icons.add, color: ColorManger.white);
                  }
                },
                orElse: () => Icon(Icons.add, color: ColorManger.white),
              );
            },
          ),
        ),
      ),
    );
  }

  /// Displays product title, description, and price information.
  Padding _productTitleAndSomeInformationText(
      ResponsiveUtils responsive,
      List<dynamic> displayList,
      int index,
      BuildContext context,
      bool isEnLocale) {
    return Padding(
      padding: responsive.setPadding(
          left: isEnLocale ? 4 : null, top: 2, right: isEnLocale ? null : 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display product title
          Text(
            displayList[index].title!,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: responsive.setTextSize(4)),
          ),
          responsive.setSizeBox(height: 0.5),
          // Display product description
          Text(
            displayList[index].description!,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontSize: responsive.setTextSize(3)),
          ),
          responsive.setSizeBox(height: 0.5),
          // Display product price
          Text(
            " ${displayList[index].price!} ${context.translate(AppStrings.egy)}",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontSize: responsive.setTextSize(3)),
          ),
        ],
      ),
    );
  }

  /// Displays the product image and wishlist button.
  Container _wishListAndImageStack(BuildContext context, int index,
      List displayList, ResponsiveUtils responsive, bool isEnLocale) {
    final product = displayList[index];

    return Container(
      height: responsive.setHeight(18),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(responsive.setBorderRadius(2)),
              topRight: Radius.circular(responsive.setBorderRadius(2))),
          color: ColorManger.brownLight),
      child: Stack(
        children: [
          // Wishlist button
          Positioned(
            right: isEnLocale ? 0 : null,
            left: isEnLocale ? null : 0,
            top: 2,
            child: IconButton(
              onPressed: () {
                // Add or remove product from wishlist using WishListCubit
                context
                    .read<WishListCubit>()
                    .addOrRemoveProductFromWish(product.sId!);
              },
              icon: BlocConsumer<WishListCubit, WishListState>(
                listener: (context, state) {
                  // Show error message if failed to add/remove from wishlist
                  state.whenOrNull(
                    addOrRemoveProductFromWishListError: (apiErrorModel) =>
                        ShowToast.showToastErrorTop(
                            errorMessage: apiErrorModel.message!,
                            context: context),
                  );
                },
                builder: (context, state) {
                  // Check if the product is in the wishlist
                  bool isInWishlist = context
                          .read<WishListCubit>()
                          .favorites
                          .containsKey(product.sId) &&
                      context.read<WishListCubit>().favorites[product.sId]!;

                  return Container(
                    height: responsive.setHeight(4),
                    width: responsive.setWidth(8.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            responsive.setBorderRadius(2)),
                        color: ColorManger.offWhite),
                    child: Icon(
                        isInWishlist ? IconlyBold.heart : IconlyBroken.heart,
                        color: ColorManger.brunLight),
                  );
                },
              ),
            ),
          ),
          // Product image
          Padding(
            padding: responsive.setPadding(top: 2.5, right: 5),
            child: CachedNetworkImage(
              imageUrl: product.image!,
              placeholder: (context, url) => const LoadingShimmer(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }

  /// Shows the product sorting bottom sheet with a list of products.
  void showSortBottomSheet(BuildContext context, int index, List displayList,
      ResponsiveUtils responsive) {
    showCupertinoModalBottomSheet(
      useRootNavigator: true,
      barrierColor: Colors.black54,
      elevation: responsive.setBorderRadius(2),
      context: context,
      builder: (context) => MultiBlocProvider(
        providers: [
          // Provide instances of ProductCubit, WishListCubit, and CartCubit
          BlocProvider.value(value: instance<ProductCubit>()),
          BlocProvider.value(value: instance<WishListCubit>()),
          BlocProvider.value(value: instance<CartCubit>()),
        ],
        child: ProductBottomSheet(
          index: index,
          displayList: displayList,
        ),
      ),
    ).then((value) {
      // Reset the cart item quantity when the bottom sheet is closed
      context.read<CartCubit>().quantityItem = 1;
    });
  }
}
