import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

/// A widget that builds a list view of categories in a horizontal scrollable list.
/// It handles the category states (loading, success, and error) using a [BlocBuilder]
/// for the [CategoryCubit].
class CategoryListViewBuilder extends StatelessWidget {
  const CategoryListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return Column(
      children: [
        // Header Row: Category title and 'View All' button

        Row(
          children: [
            Icon(
              IconlyBold.category,
              color: ColorManger.brun,
              size: responsive.setIconSize(5),
            ),
            responsive.setSizeBox(width: 2),
            // Category title
            Text(context.translate(AppStrings.categories),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: responsive.setTextSize(4))),
            const Spacer(), // Spacer to push 'View All' button to the right

            // 'View All' button, navigates to category page when tapped
            GestureDetector(
              onTap: () {
                context
                    .read<AppLogicCubit>()
                    .bottomNavBarController
                    .jumpToTab(1); // Switches to the category tab
              },
              child: Text(context.translate(AppStrings.viewAll),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: responsive.setTextSize(3.5))),
            ),
          ],
        ),
        responsive.setSizeBox(height: 3), // Spacing between title and content

        // BlocBuilder to handle category states
        BlocConsumer<CategoryCubit, CategoryState>(
          listener: (context, state) {
            if (state is GetCategoriesError) {
              context.read<CategoryCubit>().getCategories();
            }
          },
          builder: (context, state) {
            if (state is GetCategoriesSuccess) {
              // If categories are successfully loaded, display the category list
              return _categorySuccessState(state, responsive, isEnLocale);
            }
            // If the state is loading or error, show loading shimmer effect
            return _categoryLoadingAndErrorState(responsive);
          },
        ),
      ],
    );
  }

  /// Builds a loading shimmer effect for the category list while categories are being loaded.
  /// It mimics the appearance of categories and their titles while loading.
  SizedBox _categoryLoadingAndErrorState(ResponsiveUtils responsive) {
    return SizedBox(
      height: responsive.setHeight(15), // Height of the loading shimmer list
      child: ListView.builder(
        itemCount: 8, // Display 8 shimmer placeholders
        scrollDirection: Axis.horizontal, // Horizontal scrolling for categories
        itemBuilder: (context, index) {
          return Padding(
            padding: responsive.setPadding(right: 4), // Padding between items
            child: Column(
              children: [
                // Loading shimmer for category image
                LoadingShimmer(
                  height: responsive.setHeight(8), // Image height
                  width: responsive.setWidth(18), // Image width
                  borderRadius:
                      responsive.setBorderRadius(2), // Rounded corners
                ),
                responsive.setSizeBox(
                    height: 1.5), // Space between image and title

                // Loading shimmer for category title
                LoadingShimmer(
                  width: responsive.setWidth(13), // Title width
                  height: responsive.setHeight(1), // Title height
                  borderRadius:
                      responsive.setBorderRadius(2), // Rounded corners
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Builds the success state for the category list. It displays the categories
  /// in a horizontal scrollable list with their images and titles.
  SizedBox _categorySuccessState(
      GetCategoriesSuccess state, ResponsiveUtils responsive, bool isEnLocale) {
    return SizedBox(
      height: responsive.setHeight(15), // Height of the category list
      child: ListView.builder(
        addAutomaticKeepAlives: true, // Keep items alive when scrolling
        itemCount: state.data.data!.length, // Number of categories to display
        scrollDirection: Axis.horizontal, // Horizontal scrolling for categories
        itemBuilder: (context, index) {
          return Padding(
            padding: responsive.setPadding(
                left: isEnLocale ? null : 3,
                right: isEnLocale ? 3.5 : null), // Padding between items
            child: InkWell(
              onTap: () {
                // Navigate to the ProductBaseOnCategory screen when a category is tapped

                Navigator.of(context, rootNavigator: !false).push(
                  MaterialPageRoute(
                    builder: (context) => MultiBlocProvider(
                      providers: [
                        BlocProvider(
                          create: (context) => instance<
                              ProductBasedOnCategoryCubit>(), // Create the cubit
                        ),
                        BlocProvider.value(
                          value: instance<CartCubit>(),
                        ),
                        BlocProvider.value(
                          value: instance<WishListCubit>(),
                        ),
                      ],
                      child: ProductBaseOnCategory(
                        categoryId:
                            state.data.data![index].sId!, // Pass category ID
                        categoryName: state
                            .data.data![index].title!, // Pass category name
                      ),
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  // Category image container
                  InkWell(
                    child: Container(
                      height: responsive.setHeight(8), // Image container height
                      width: responsive.setHeight(8.5), // Image container width
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(responsive
                            .setBorderRadius(2)), // Rounded corners for image
                        color: ColorManger.backgroundItem, // Background color
                      ),
                      child: Padding(
                        padding: responsive.setPadding(
                            top: 1,
                            bottom: 1,
                            left: 1,
                            right: 1), // Padding inside container
                        child: CachedNetworkImage(
                          imageUrl: state.data.data![index]
                              .image!, // Load category image from network
                          placeholder: (context, url) => LoadingShimmer(
                            height: responsive
                                .setHeight(9), // Placeholder image height
                            width: responsive
                                .setWidth(9), // Placeholder image width
                            borderRadius: responsive.setBorderRadius(
                                2), // Rounded corners for placeholder
                          ),
                          errorWidget: (context, url, error) => const Icon(Icons
                              .error), // Display error icon if image fails to load
                        ),
                      ),
                    ),
                  ),
                  responsive.setSizeBox(
                      height: 1.5), // Space between image and title

                  // Category title
                  Text(state.data.data![index].title!,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: responsive.setTextSize(
                              3.2))), // Category title with responsive text size
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
