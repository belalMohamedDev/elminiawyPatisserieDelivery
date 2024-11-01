import 'dart:ui';

import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return Column(
      children: [
        Container(
          height: 200.h,
          color: ColorManger.brun,
          child: BlocBuilder<ChangeUserDeliveryImageCubit,
              ChangeUserDeliveryImageState>(
            builder: (context, state) {
              return Row(
                children: [
                  SizedBox(
                    width: 20.w,
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
                          height: responsive.setHeight(15),
                          width: responsive.setWidth(32),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  responsive.setBorderRadius(50)),
                              color: Colors.white70),
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
                                      height: 100.h,
                                    )
                                  : CachedNetworkImage(
                                      imageUrl: context
                                          .read<ChangeUserDeliveryImageCubit>()
                                          .initialUserImage!,
                                      fit: BoxFit.fitHeight,
                                      width: responsive.setWidth(31),
                                      cacheManager: CustomCacheManager.instance,
                                      height: responsive.setHeight(14),
                                      placeholder: (context, url) =>
                                          LoadingShimmer(
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
                            color: Colors.white70,
                            size: responsive.setIconSize(9),
                          ),
                        ),
                      ),
                      state is ChangeUserDeliveryImageLoading
                          ? Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    responsive.setBorderRadius(50)),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 1.2, sigmaY: 1.2),
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
                          fontSize: responsive.setTextSize(4),
                        ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        profileColumnCard(context),
      ],
    );
  }
}
