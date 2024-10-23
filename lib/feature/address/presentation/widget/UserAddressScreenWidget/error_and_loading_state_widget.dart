import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class UserAddressErrorAndLoadingStateWidget extends StatelessWidget {
  const UserAddressErrorAndLoadingStateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return Padding(
      padding: EdgeInsets.only(
        right: isEnLocale ? 60.w : 20.w,
        left: isEnLocale ? 20 : 30.w,
        top: 20.h,
      ),
      child: ListView.builder(
        itemCount: 12,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              //   right: 40.w,
              bottom: 25.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  IconlyBold.location,
                  color: ColorManger.brown,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LoadingShimmer(
                        height: 5.h,
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      LoadingShimmer(
                        height: 5.h,
                        width: 180.w,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      LoadingShimmer(
                        height: 5.h,
                        width: 80.w,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
