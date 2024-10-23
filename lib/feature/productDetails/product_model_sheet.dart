import '../../../../../core/common/shared/shared_imports.dart'; //

class ProductBottomSheet extends StatelessWidget {
  const ProductBottomSheet(
      {super.key, required this.index, required this.displayList});

  final int index;
  final List displayList;

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    final product = displayList[index];

    return Padding(
      padding: responsive.setPadding(left: 5, right: 5, bottom: 4),
      child: SizedBox(
        height: responsive.setHeight(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _productImageRatingNameAndFavoritRow(product, context, responsive),
            responsive.setSizeBox(height: 2),
            Text(
              context.translate(AppStrings.description) ,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: responsive.setTextSize(4)),
            ),
            responsive.setSizeBox(height: 0.5),
            Text(
              '  ${displayList[index].description!}',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: responsive.setTextSize(3.5)),
            ),
            const Spacer(),
            _addRemoveAndAddToCartButton(context, responsive)
          ],
        ),
      ),
    );
  }

  BlocConsumer _addRemoveAndAddToCartButton(
      BuildContext context, ResponsiveUtils responsive) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        state.whenOrNull(
          deleteCartItemError: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
          addItemToCartSuccess: (data, quantity) =>
              ShowToast.showToastSuccessTop(
                  message: data.message!, context: context),
        );
      },
      builder: (context, state) {
        return Row(
          children: [
            SizedBox(
              width: responsive.setWidth(1), // Spacer between spinner and text
            ),
            GestureDetector(
              onTap: () => context.read<CartCubit>().decreaseQuantity(),
              child: CircleAvatar(
                backgroundColor: ColorManger.brownLight,
                child: Icon(
                  Icons.remove,
                  color: ColorManger.brown,
                ),
              ),
            ),
            SizedBox(
              width: responsive.setWidth(2), // Spacer between spinner and text
            ),
            Text(
              '${context.read<CartCubit>().quantityItem}',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(),
            ),
            SizedBox(
              width: responsive.setWidth(2), // Spacer between spinner and text
            ),
            GestureDetector(
              onTap: () => context.read<CartCubit>().increaseQuantity(),
              child: CircleAvatar(
                backgroundColor: ColorManger.brown,
                child: Icon(
                  Icons.add_rounded,
                  color: ColorManger.white,
                ),
              ),
            ),
            const Spacer(),
            CustomButton(
              height: 5,
              width: 55,
              onPressed: () {
                context
                    .read<CartCubit>()
                    .addItemToCart(displayList[index].sId!);
              },
              widget: state.maybeWhen(
                addItemToCartLoading: (id) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: responsive.setHeight(2),
                      width: responsive.setWidth(4),
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2.0,
                        strokeAlign: 0.01,
                      ),
                    ),
                    SizedBox(
                      width: responsive
                          .setWidth(3), // Spacer between spinner and text
                    ),
                    Text(
                      context.translate(AppStrings.loading)  ,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: responsive.setTextSize(3.8),
                              ),
                    ),
                  ],
                ),
                orElse: () => Text(
                 context.translate( AppStrings.addToCart),
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: responsive.setTextSize(3.8),
                      ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Row _productImageRatingNameAndFavoritRow(
      product, BuildContext context, ResponsiveUtils responsive) {
    return Row(
      children: [
        Padding(
          padding: responsive.setPadding(top: 3),
          child: Container(
            decoration: BoxDecoration(
              color: ColorManger.backgroundItem,
              borderRadius:
                  BorderRadius.circular(responsive.setBorderRadius(2.5)),
            ),
            child: CachedNetworkImage(
              imageUrl: product.image!,
              height: responsive.setHeight(12),
              placeholder: (context, url) => const LoadingShimmer(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        responsive.setSizeBox(width: 4),
        _namePriceAndRatingColumn(context, responsive),
        const Spacer(),
        _wishListContainer(context, product, responsive),
      ],
    );
  }

  Padding _namePriceAndRatingColumn(
      BuildContext context, ResponsiveUtils responsive) {
    return Padding(
      padding: responsive.setPadding(top: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            displayList[index].title!,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: responsive.setTextSize(4)),
          ),
          responsive.setSizeBox(height: 1.2),
          IgnorePointer(
            ignoring: true,
            child: RatingBar(
                initialRating: displayList[index].ratingsAverage!,
                direction: Axis.horizontal,
                itemSize: responsive.setIconSize(4),
                itemCount: 5,
                allowHalfRating: true,
                itemPadding: responsive.setPadding(right: 0.5),
                onRatingUpdate: (rating) {},
                ratingWidget: RatingWidget(
                    full: Icon(
                      IconlyBold.star,
                      color: ColorManger.brown,
                    ),
                    half: Icon(
                      IconlyBold.star,
                      color: ColorManger.brun,
                    ),
                    empty: Icon(
                      IconlyBroken.star,
                      color: ColorManger.brunLight,
                    ))),
          ),
          responsive.setSizeBox(height: 1.2),
          Text(
            '${ context.translate(AppStrings.price)}   ${displayList[index].price!}  ${ context.translate(AppStrings.egy)}',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontSize: responsive.setTextSize(3.5)),
          ),
        ],
      ),
    );
  }

  Container _wishListContainer(
      BuildContext context, product, ResponsiveUtils responsive) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManger.backgroundItem,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2.5)),
      ),
      child: IconButton(
        onPressed: () {
          context
              .read<WishListCubit>()
              .addOrRemoveProductFromWish(product.sId!);
        },
        icon: BlocConsumer<WishListCubit, WishListState>(
          listener: (context, state) {
            state.whenOrNull(
              addOrRemoveProductFromWishListError: (apiErrorModel) =>
                  ShowToast.showToastErrorTop(
                      errorMessage: apiErrorModel.message!, context: context),
            );
          },
          builder: (context, state) {
            bool isInWishlist = context
                    .read<WishListCubit>()
                    .favorites
                    .containsKey(product.sId) &&
                context.read<WishListCubit>().favorites[product.sId]!;

            return Icon(isInWishlist ? IconlyBold.heart : IconlyBroken.heart,
                color: ColorManger.brunLight);
          },
        ),
      ),
    );
  }
}
