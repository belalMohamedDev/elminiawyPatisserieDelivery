import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class BuildSearchBar extends StatelessWidget {
  const BuildSearchBar({
    super.key,
    required this.mapCubit,
  });
  final MapCubit mapCubit;

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return Padding(
      padding: responsive.setPadding(
        top: 7,
        left: isEnLocale ? 6 : 0,
        right: isEnLocale ? 0 : 6,
      ),
      child: SizedBox(
        width: responsive.screenWidth * 0.9,
        height: responsive.setHeight(5),
        child: TextFormField(
          onChanged: (value) {
            mapCubit.searchLocation(value);
          },
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: responsive.setTextSize(3.5),
              ),
          controller: mapCubit.searchConroller,
          decoration: InputDecoration(
              hintText: mapCubit.textEditingSearchText ??
                  context.translate(AppStrings.findYourLocation),
              prefixIcon: Icon(IconlyBroken.search,
                  size: responsive.setIconSize(5), color: ColorManger.white),
              hintStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: responsive.setTextSize(3.5),
                  ),
              fillColor: ColorManger.brunLight,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManger.brunLight,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(
                    responsive.setBorderRadius(2),
                    responsive.setBorderRadius(2))),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManger.brunLight,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(
                    responsive.setBorderRadius(2),
                    responsive.setBorderRadius(2))),
              )),
        ),
      ),
    );
  }
}
