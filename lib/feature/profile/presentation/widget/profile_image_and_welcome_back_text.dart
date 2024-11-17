import 'dart:ui';

import '../../../../core/common/shared/shared_imports.dart'; //

class ProfileImageAndWelcomeBackText extends StatelessWidget {
  const ProfileImageAndWelcomeBackText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return Container(
      height: responsive.setHeight(28),
      color: ColorManger.brun,
      child: BlocBuilder<ChangeUserDeliveryImageCubit,
          ChangeUserDeliveryImageState>(
        builder: (context, state) {
          return Row(
            children: [
              responsive.setSizeBox(
                width: 4,
              ),
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      showPicker(
                        context: context,
                        listTileCamera: () async {
                          await context
                              .read<ChangeUserDeliveryImageCubit>()
                              .pickImage(ImageSource.camera);
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        listTileGallery: () async {
                          await context
                              .read<ChangeUserDeliveryImageCubit>()
                              .pickImage(ImageSource.gallery);
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                      );
                    },
                    child: Container(
                      height: responsive.setHeight(12),
                      width: responsive.setWidth(26),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              responsive.setBorderRadius(50)),
                          color: Colors.white),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              responsive.setBorderRadius(50)),
                          child: context
                                      .read<ChangeUserDeliveryImageCubit>()
                                      .initialUserImage ==
                                  null
                              ? Image.asset(
                                  ImageAsset.guestIconGreen,
                                  color: ColorManger.white,
                                  height: 80.h,
                                )
                              : CachedNetworkImage(
                                  imageUrl: context
                                      .read<ChangeUserDeliveryImageCubit>()
                                      .initialUserImage!,
                                  fit: BoxFit.fitHeight,
                                  width: responsive.setWidth(25.7),
                                  cacheManager: CustomCacheManager.instance,
                                  height: responsive.setHeight(11.7),
                                  placeholder: (context, url) => LoadingShimmer(
                                        height: responsive.setHeight(
                                            15), // Placeholder height while loading
                                        width: responsive.setWidth(
                                            89), // Placeholder width while loading
                                        borderRadius:
                                            responsive.setBorderRadius(
                                                2), // Placeholder border radius
                                      ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorManger.brun,
                          borderRadius: BorderRadius.circular(
                              responsive.setBorderRadius(50))),
                      child: Icon(
                        IconlyBroken.edit,
                        color: ColorManger.white,
                        size: responsive.setIconSize(6),
                      ),
                    ),
                  ),
                  state is ChangeUserDeliveryImageLoading
                      ? Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                responsive.setBorderRadius(50)),
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 1.2, sigmaY: 1.2),
                              child: Container(
                                color: Colors.black.withOpacity(0.1),
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: ColorManger.white,
                                    strokeWidth: 3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
              responsive.setSizeBox(width: 5),
              Text(
                context.translate(
                    AppStrings.welcomeBackLetsAchieveGreatThingsToday),
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: responsive.setTextSize(3.5),
                    ),
              ),
              const Spacer(),
              Padding(
                padding: responsive.setPadding(left: 5, top: 5.5),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child: Container(
                        height: responsive.setHeight(4),
                        width: responsive.setWidth(9),
                        decoration: BoxDecoration(
                            color: ColorManger.white,
                            borderRadius: BorderRadius.circular(
                                responsive.setBorderRadius(2))),
                        child: Icon(
                          isEnLocale
                              ? IconlyBroken.arrowRight2
                              : IconlyBroken.arrowLeft2,
                          color: ColorManger.brun,
                          size: responsive.setIconSize(6),
                        )),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
