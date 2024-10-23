import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

/// A widget that displays a carousel slider for banners retrieved from the server.
/// The banner images are fetched using a [BannerCubit], and different states are
/// handled (loading, success, and error states).
class BannerCarouselSlider extends StatelessWidget {
  const BannerCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocConsumer<BannerCubit, BannerState>(
      listener: (context, state) {
        if (state is GetBannersError) {
          context.read<BannerCubit>().getBanners();
        }
      },
      // Define when the widget should rebuild (only for loading, success, and error states)
      buildWhen: (previous, current) =>
          current is GetBannersLoading ||
          current is GetBannersSuccess ||
          current is GetBannersError,
      builder: (context, state) {
        if (state is GetBannersSuccess) {
          // If the banners are successfully fetched, display the carousel slider
          return _bannersSuccessState(state, responsive);
        }
        // If the state is loading or error, display a loading shimmer effect
        return Center(
          child: LoadingShimmer(
            height: responsive.setHeight(15),
            width: double.infinity,
            borderRadius: responsive.setBorderRadius(2),
          ),
        );
      },
    );
  }

  /// Builds the carousel slider using the banner data.
  /// The banners are displayed with infinite scrolling and auto-play features.
  CarouselSlider _bannersSuccessState(
      GetBannersSuccess state, ResponsiveUtils responsive) {
    return CarouselSlider(
      options: CarouselOptions(
        height: responsive.setHeight(15), // Set the height for each banner
        enableInfiniteScroll: true, // Enable infinite scrolling of banners
        autoPlay: true, // Automatically play banners
        viewportFraction: 1.1, // Set the viewport fraction for visible slides
        autoPlayInterval: const Duration(seconds: 3), // Time between auto-plays
        autoPlayAnimationDuration:
            const Duration(seconds: 1), // Auto-play animation duration
        autoPlayCurve: Curves.easeInOutCubic, // Animation curve for auto-play
        scrollDirection: Axis.horizontal, // Horizontal scrolling for banners
      ),
      items: state.data.data!
          .map((banner) => ClipRRect(
                borderRadius: BorderRadius.circular(responsive
                    .setBorderRadius(2)), // Set rounded corners for the banners
                child: CachedNetworkImage(
                  imageUrl:
                      banner.image!, // Load the banner image from the network
                  width: responsive.setWidth(89), // Set banner width
                  fit: BoxFit.fill, // Fit the image to fill the container
                  placeholder: (context, url) => LoadingShimmer(
                    height: responsive
                        .setHeight(15), // Placeholder height while loading
                    width: responsive
                        .setWidth(89), // Placeholder width while loading
                    borderRadius: responsive
                        .setBorderRadius(2), // Placeholder border radius
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons
                      .error), // Display an error icon if image fails to load
                ),
              ))
          .toList(), // Convert the banner data to a list of widgets
    );
  }
}
