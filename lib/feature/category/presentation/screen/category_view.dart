import '../../../../../core/common/shared/shared_imports.dart';

/// The `CategoryView` class is a `StatelessWidget` responsible for displaying
/// categories in a grid format. It utilizes Bloc to fetch and display categories
/// based on the state of `CategoryCubit`. If categories are fetched successfully,
/// they are displayed, otherwise a loading shimmer is shown.

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      appBar: AppBar(), // Standard app bar
      body: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          // Check if categories are successfully fetched
          if (state is GetCategoriesSuccess) {
            // Display categories in the success state
            return _categorySuccessState(state, context, responsive);
          }

          // Display loading or error state while categories are being fetched or if an error occurs
          return _categoryLoadingAndErrorState(responsive);
        },
      ),
    );
  }
}

/// This method handles the UI when categories are still loading or when an error occurs.
/// A grid of shimmer placeholders is displayed to indicate loading.
///
/// [responsive] is an instance of `ResponsiveUtils` to adjust padding and sizing
/// dynamically based on the screen size.
Padding _categoryLoadingAndErrorState(ResponsiveUtils responsive) {
  return Padding(
    padding: responsive.setPadding(left: 5, right: 5),
    child: GridView.count(
      crossAxisCount: 3, // 3 items per row
      childAspectRatio: 0.7, // Aspect ratio of the grid items
      children: List.generate(
        12, // Show 12 shimmer placeholders
        (index) => Column(
          children: [
            // First shimmer placeholder representing a category image
            LoadingShimmer(
              height: responsive.setHeight(10), // Responsive height for shimmer
              width: responsive.setWidth(25), // Responsive width for shimmer
              borderRadius: responsive.setBorderRadius(2),
            ),
            responsive.setSizeBox(height: 2), // Spacing between elements
            // Second shimmer placeholder representing a title
            LoadingShimmer(
              width: responsive.setWidth(12), // Smaller width for shimmer
              height: responsive.setHeight(0.5),
              borderRadius: responsive.setBorderRadius(2),
            ),
            responsive.setSizeBox(height: 1),
            // Third shimmer placeholder representing a smaller subtitle or detail
            LoadingShimmer(
              width: responsive.setWidth(8),
              height: responsive.setHeight(0.5),
              borderRadius: responsive.setBorderRadius(2),
            ),
          ],
        ),
      ),
    ),
  );
}

/// This method handles the UI when categories are successfully fetched and available for display.
/// It displays each category in a grid with an image, title, and a clickable area that navigates
/// to a screen showing products based on the selected category.
///
/// [state] is the current state which holds the category data.
/// [context] is the build context used for navigation and theme access.
/// [responsive] is used to adjust the layout based on screen size.
Padding _categorySuccessState(GetCategoriesSuccess state, BuildContext context,
    ResponsiveUtils responsive) {
  return Padding(
    padding:
        responsive.setPadding(left: 5, right: 5), // Set padding dynamically
    child: GridView.count(
      addAutomaticKeepAlives:
          true, // Keep child widgets alive for performance optimization
      shrinkWrap: true, // Limit the size of the grid
      physics: const NeverScrollableScrollPhysics(), // Disable scrolling
      crossAxisCount: 3, // 3 items per row
      childAspectRatio: 0.7, // Aspect ratio for grid items
      children: List.generate(
        state.data.data!
            .length, // Dynamically generate grid items based on the fetched categories
        (index) => Column(
          children: [
            // Wrap category item in InkWell to allow user interaction (tapping)
            InkWell(
              onTap: () {
                // Navigate to product list screen for the selected category
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
              child: Container(
                height: responsive.setHeight(
                    10), // Responsive height for category image container
                width: responsive.setWidth(
                    25), // Responsive width for category image container
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      responsive.setBorderRadius(2)), // Rounded corners
                  color: ColorManger
                      .backgroundItem, // Background color for the container
                ),
                child: Padding(
                  padding: responsive.setPadding(
                      left: 4,
                      right: 4), // Padding for the image inside the container
                  child: CachedNetworkImage(
                    imageUrl: state
                        .data.data![index].image!, // Image URL for category
                    placeholder: (context, url) => LoadingShimmer(
                      height: responsive.setHeight(
                          10), // Placeholder shimmer while image loads
                      width: responsive.setWidth(25),
                      borderRadius: responsive.setBorderRadius(2),
                    ),
                    errorWidget: (context, url, error) => const Icon(Icons
                        .error), // Show an error icon if the image fails to load
                  ),
                ),
              ),
            ),
            responsive.setSizeBox(height: 2), // Spacing between image and title
            // Display category title
            Text(
              state.data.data![index].title!, // Category title text
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: responsive
                      .setTextSize(3)), // Adjust font size responsively
            ),
            responsive.setSizeBox(height: 1), // Additional spacing
            // Placeholder shimmer for future dynamic content (e.g., subtitle or metadata)
            LoadingShimmer(
              width: responsive.setWidth(8),
              height: responsive.setHeight(0.5),
              borderRadius: responsive.setBorderRadius(2),
            ),
          ],
        ),
      ),
    ),
  );
}
