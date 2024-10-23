import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class UserAddressView extends StatelessWidget {
  const UserAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return BlocConsumer<UserAddressCubit, UserAddressState>(
      listener: (context, state) {
        state.whenOrNull(
          getAllAddressError: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
          removeAddressError: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
          removeAddressSuccess: (data) => ShowToast.showToastSuccessTop(
              message: data.message!, context: context),
        );
      },
      builder: (context, state) {
        return Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(context.translate(AppStrings.myAddress),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 16.sp)),
                actions: [
                  context.read<UserAddressCubit>().addressDataList.isEmpty ||
                          state is GetAllAddressLoading
                      ? const SizedBox()
                      : Padding(
                          padding: EdgeInsets.only(
                              right: isEnLocale ? 15.w : 0,
                              left: isEnLocale ? 0 : 18.w),
                          child: InkWell(
                              onTap: () {
                                context.pushNamed(Routes.map);
                              },
                              child: Image.asset(
                                ImageAsset.addLocation,
                                height: 22.h,
                              )),
                        )
                ],
              ),
              body: 
        
              UserAddressBody(state: state),
             
            ),
            LoadingOverlay(isLoading: state is RemoveAddressLoading)
          ],
        );
      },
    );
  }
}
