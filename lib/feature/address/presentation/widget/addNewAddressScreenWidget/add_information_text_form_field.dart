import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class AddAddressInformationFromTextFormField extends StatelessWidget {
  const AddAddressInformationFromTextFormField({
    super.key,
    required this.getAddressResponseData,
  });

  final GetAddressResponseData? getAddressResponseData;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserAddressCubit, UserAddressState>(
      listener: (context, state) {
        _mangeUserAddressCuibtState(context, state);
      },
      builder: (context, state) {
        return BlocBuilder<UserAddressCubit, UserAddressState>(
          builder: (context, state) {
            final userAddressCubit = context.read<UserAddressCubit>();
            final mapCuibt = context.read<MapCubit>();

            return Form(
              key: userAddressCubit.formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !AppRegex.isNameValid(value)) {
                        return context.translate(
                            AppStrings.pleaseEnterAValidBuildingName);
                      }
                      return null;
                    },
                    controller: userAddressCubit.buildingNameController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: userAddressCubit.regionAreaIndex == 1
                          ? context.translate(AppStrings.house)
                          : context.translate(AppStrings.buildingName),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  userAddressCubit.regionAreaIndex == 1
                      ? const SizedBox()
                      : Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: userAddressCubit.companyController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return userAddressCubit.regionAreaIndex == 2
                                        ? context.translate(
                                            AppStrings.pleaseEnterAValidCompany)
                                        : context.translate(
                                            AppStrings.pleaseEnterAValidApt);
                                  }
                                  return null;
                                },
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: userAddressCubit.regionAreaIndex ==
                                          2
                                      ? context.translate(AppStrings.company)
                                      : context.translate(AppStrings.aptNo),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: userAddressCubit.floorController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: context
                                      .translate(AppStrings.floorOptional),
                                ),
                              ),
                            ),
                          ],
                        ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    controller: userAddressCubit.streetController,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !AppRegex.isNameValid(value)) {
                        return context
                            .translate(AppStrings.pleaseEnterAValidStreetName);
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: context.translate(AppStrings.street),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    controller: userAddressCubit.additionalDirectionsContoller,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: context
                          .translate(AppStrings.additionalDirectionsOptional),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    controller: userAddressCubit.phoneNumberContoller,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !AppRegex.isPhoneNumberValid(value)) {
                        return context
                            .translate(AppStrings.pleaseEnterAValidPhoneNumber);
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: context.translate(AppStrings.phoneNumber),
                      prefixIcon: CountryCodePicker(
                        showFlagMain: false,
                        onChanged: (value) {},
                        textStyle: TextStyle(color: ColorManger.black26),
                        initialSelection: '+20',
                        favorite: const ['+20', '+39', 'FR', '+966'],
                        flagWidth: 20.r,
                        flagDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.r)),
                        dialogBackgroundColor: ColorManger.white,
                        closeIcon: Icon(
                          Icons.close_rounded,
                          color: ColorManger.black54,
                        ),
                        showDropDownButton: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    controller: userAddressCubit.addressLabel,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText:
                          context.translate(AppStrings.addressLabelOptional),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 8.w, top: 10.h, bottom: 10.h),
                    child: Text(context.translate(AppStrings.givethisAddress),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: 10.5.sp)),
                  ),
                  CustomButton(
                      onPressed: () async {
                        _validationTextFormFieldThenCreateOrUpdateAddress(
                            userAddressCubit, mapCuibt, getAddressResponseData);
                      },
                      widget: state.maybeWhen(
                        createNewAddressLoading: () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20.h,
                              width: 20.w,
                              child: const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2.0,
                                strokeAlign: 0.01,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              context.translate(AppStrings.loading),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    fontSize: 16.sp,
                                  ),
                            ),
                          ],
                        ),
                        updateAddressLoading: () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20.h,
                              width: 20.w,
                              child: const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2.0,
                                strokeAlign: 0.01,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              context.translate(AppStrings.loading),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    fontSize: 16.sp,
                                  ),
                            ),
                          ],
                        ),
                        orElse: () => Text(
                          context.translate(AppStrings.saveAddress),
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontSize: 16.sp,
                              ),
                        ),
                      ))
                ],
              ),
            );
          },
        );
      },
    );
  }
}

void _validationTextFormFieldThenCreateOrUpdateAddress(
    UserAddressCubit userAddressCubit,
    MapCubit mapCuibt,
    GetAddressResponseData? getAddressResponseData) async {
  final nearbyStoreAddressId =
      mapCuibt.checkLocationAvailableResponse?.nearbyStoreAddressId;
  final addressId = getAddressResponseData?.sId;
  final latitude = mapCuibt.targetPosition.latitude.toString();
  final longitude = mapCuibt.targetPosition.longitude.toString();
  final englishAddress =
      mapCuibt.checkLocationAvailableResponse?.englishAddress;
  final arabicAddress = mapCuibt.checkLocationAvailableResponse?.arabicAddress;

  if (userAddressCubit.formKey.currentState!.validate()) {
    if (getAddressResponseData != null) {
      await userAddressCubit.updateAddress(
          nearbyStoreAddress: nearbyStoreAddressId ?? '',
          id: addressId ?? '',
          latitude: latitude,
          longitude: longitude,
          enRegion: englishAddress ?? '',
          arRegion: arabicAddress ?? '');
    } else {
      await userAddressCubit.addNewAddress(
          nearbyStoreAddress: nearbyStoreAddressId ?? '',
          latitude: latitude,
          longitude: longitude,
          enRegion: englishAddress ?? '',
          arRegion: arabicAddress ?? '');
    }
  }
}

void _mangeUserAddressCuibtState(BuildContext context, UserAddressState state) {
  state.whenOrNull(
      createNewAddressError: (apiErrorModel) {
        ShowToast.showToastErrorTop(
            errorMessage: apiErrorModel.message!, context: context);
      },
      updateAddressError: (apiErrorModel) => ShowToast.showToastErrorTop(
          errorMessage: apiErrorModel.message!, context: context),
      createNewAddressSuccess: (data) {
        final userAddressCubit = context.read<UserAddressCubit>();

        ShowToast.showToastSuccessTop(message: data.message!, context: context);

        if (context.mounted) {
          userAddressCubit.clearAllControllers();

          context.read<MapCubit>().checkLocationAvailableResponse = null;

          context.read<MapCubit>().textEditingSearchText =
              context.translate(AppStrings.findYourLocation);

          if (userAddressCubit.isPaymentAddress == true) {
            final index = userAddressCubit.addressDataList
                .indexWhere((element) => element.sId == data.data!.sId);

            if (index != -1) {
       
            }
          } else {
            context.pop();
            context.pushReplacementNamed(
              Routes.address,
            );
          }
        }
      },
      updateAddressSuccess: (data) {
        ShowToast.showToastSuccessTop(message: data.message!, context: context);
        if (context.mounted) {
          context.pop();
          Navigator.pushReplacementNamed(
            context,
            Routes.address,
          );
        }
      });
}
