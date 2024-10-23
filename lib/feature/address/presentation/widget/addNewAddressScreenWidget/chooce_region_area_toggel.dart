


import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class ChooceRegionAreaFromToggel extends StatelessWidget {
  const ChooceRegionAreaFromToggel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return SizedBox(
      height: 32.h,
      child: BlocBuilder<UserAddressCubit, UserAddressState>(
        builder: (context, state) {
          return ListView.builder(
              addAutomaticKeepAlives: true,
              itemCount: context.read<UserAddressCubit>().regionArea.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 8.w),
                  child: InkWell(
                    onTap: () {
                      context.read<UserAddressCubit>().changeRegionAreaIndex(
                          index: index,
                          alias: context
                              .read<UserAddressCubit>()
                              .regionArea[index]["textEn"]);
                    },
                    child: RegionAreaWidget(
                      index: index,
                      imagePath: context
                          .read<UserAddressCubit>()
                          .regionArea[index]["imagePath"],
                      text: isEnLocale? context.read<UserAddressCubit>().regionArea[index]["textEn"]: 
                      context.read<UserAddressCubit>().regionArea[index]["textAr"],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
