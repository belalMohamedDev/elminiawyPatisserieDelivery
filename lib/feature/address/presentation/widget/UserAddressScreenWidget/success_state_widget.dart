import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class UserAddressSuccessStateWidget extends StatelessWidget {
  const UserAddressSuccessStateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    final userAddress = context.read<UserAddressCubit>();

    return Padding(
      padding: EdgeInsets.only(
          left: isEnLocale ? 20.w : 0, right: isEnLocale ? 0 : 20.w, top: 10.h),
      child: ListView.builder(
        addAutomaticKeepAlives: true,
        itemCount: userAddress.addressDataList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 70.h,
                child: Slidable(
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (_) {
                            userAddress.deleteUserAddress(
                                userAddress.addressDataList[index].sId!);
                          },
                          backgroundColor: ColorManger.redError,
                          foregroundColor: ColorManger.white,
                          icon: IconlyBold.delete,
                          label: context.translate(AppStrings.delete),
                        ),
                        SlidableAction(
                          onPressed: (context) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MultiBlocProvider(
                                  providers: [
                                    BlocProvider.value(
                                      value: instance<UserAddressCubit>(),
                                    ),
                                    BlocProvider.value(
                                      value: instance<MapCubit>(),
                                    ),
                                  ],
                                  child: AddNewAddressScreen(
                                    getAddressResponseData:
                                        userAddress.addressDataList[index],
                                  ),
                                ),
                              ),
                            );
                          },
                          backgroundColor: ColorManger.backgroundItem,
                          foregroundColor: ColorManger.brown,
                          icon: IconlyBold.edit,
                          label: context.translate(AppStrings.edit),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Icon(
                            IconlyBold.location,
                            color: ColorManger.brown,
                          ),
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              userAddress.addressDataList[index].buildingName!,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontSize: 16.sp),
                            ),
                            Text(
                              userAddress.addressDataList[index].phone!,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontSize: 11.sp),
                              maxLines: 1,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: isEnLocale ? 300.w : 250.w),
                              child: Text(
                                userAddress.addressDataList[index].region ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: ColorManger.grey,
                                        fontSize: 11.sp),
                                maxLines: 1,
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 15.h,
              )
            ],
          );
        },
      ),
    );
  }
}
