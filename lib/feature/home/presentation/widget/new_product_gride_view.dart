import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

/// A widget that displays new products in a grid view layout.
/// It manages product states (loading, success, and error) using a [BlocConsumer]
/// for the [ProductCubit]. The listener updates the wishlist state when products are loaded.
class NewProductGrideView extends StatelessWidget {
  const NewProductGrideView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Column(
      children: [
        // Header Row: New Products title and 'See All' button

        Row(
          children: [
            Icon(
              IconlyBold.discount,
              color: ColorManger.brun,
              size: responsive.setIconSize(5),
            ),
            responsive.setSizeBox(width: 2),
            // New Products title
            Text(context.translate(AppStrings.newProductsInStore),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: responsive.setTextSize(4))),
            const Spacer(), // Spacer to push 'See All' button to the right

            // 'See All' button, navigates to the NewProductView page when tapped

            InkWell(
              onTap: () {
                context
                    .pushNamed(// Disable bottom navigation bar on this screen
                        Routes.newProduct // Navigate to NewProductView screen
                        );
              },
              child: Text(context.translate(AppStrings.seeAll),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: responsive.setTextSize(3.5))),
            ),
          ],
        ),
        responsive.setSizeBox(
            height: 3), // Spacing between title and product grid

        // BlocConsumer to handle product state (success, loading, error)
        BlocConsumer<ProductCubit, ProductState>(
          listener: (context, state) {
            // Update the wishlist when products are successfully loaded
            state.whenOrNull(
              getProductError: (apiErrorModel) {
                context.read<ProductCubit>().getProduct();
              },
              getProductSuccess: (data) {
                final wishListCubit = context.read<WishListCubit>();

                // Iterate through the loaded products and update the wishlist state
                for (var element in data.data!) {
                  if (element.inWishlist == true) {
                    wishListCubit.favorites[element.sId!] = element.inWishlist!;
                  } else {
                    wishListCubit.favorites.remove(element.sId!);
                  }
                }
              },
            );
          },
          builder: (context, state) {
            // If state is loading or error, show a loading grid view
            if (state is GetProductError || state is GetProductLoading) {
              return const ProductGridViewLoadingState(
                physics:
                    NeverScrollableScrollPhysics(), // Prevent scrolling while loading
              );
            }

            // If state is success, show the grid view of products
            return ProductGridViewSuccessState(
              dataList: context
                  .read<ProductCubit>()
                  .dataList, // Pass the loaded product data
              grideViewIndex: 4, // Number of grid items per row
              physics:
                  const NeverScrollableScrollPhysics(), // Disable scrolling in this widget
            );
          },
        ),
      ],
    );
  }
}
