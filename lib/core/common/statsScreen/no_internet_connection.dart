import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class NoconnectionScreen extends StatelessWidget {
  const NoconnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ResponsiveUtils for layout and size adjustments based on screen size
    final responsive = ResponsiveUtils(context);
    return Scaffold(
      backgroundColor: ColorManger.white,
      body: BlocBuilder<AppLogicCubit, AppLogicState>(
        builder: (context, state) {
          bool isEnLocale =
              context.read<AppLogicCubit>().currentLangCode == 'en';

          return Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: SvgPicture.asset(
                      ImageAsset.noInternetConnection,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Text(
                  isEnLocale ? 'Opps ! ....' : ' .... ! عذرًا',
                  style: TextStyle(
                    fontSize: responsive.setTextSize(5),
                    color: ColorManger.brun,
                    fontFamily: FontConsistent.geLocalozedFontFamily(),
                  ), // Use large title style from theme
                ),

                // Add space between the title and description
                const SizedBox(height: 14),

                // Display the description text for the error or message
                Text(
                  isEnLocale
                      ? 'Something wrong with your connection, Please try again after a moment.'
                      : "هناك خطأ ما في اتصالك، يرجى المحاولة مرة أخرى بعد لحظة",
                  textAlign: TextAlign.center, // Center-align the text
                  style: TextStyle(
                    fontSize: responsive.setTextSize(4),
                    color: ColorManger.brunLight,
                    fontFamily: FontConsistent.geLocalozedFontFamily(),
                  ),
                ),

                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
