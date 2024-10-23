import '../../../../../core/common/shared/shared_imports.dart'; //

class AccountInfomationBody extends StatelessWidget {
  const AccountInfomationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountInformationCubit, AccountInformationState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 30.h),
          child: Column(
            children: [
              _accountInformationTextFormField(context),
              SizedBox(
                height: 30.h,
              ),
              _accountInformationButton(context)
            ],
          ),
        );
      },
    );
  }

  Form _accountInformationTextFormField(BuildContext context) {
    return Form(
      key: context.read<AccountInformationCubit>().formKey,
      child: Column(
        children: [
          TextFormField(
            enabled: false,
            decoration: InputDecoration(
              hintText: context.read<AccountInformationCubit>().userEmail,
              prefixIcon: Icon(IconlyBroken.message,
                  size: 18.sp, color: ColorManger.brunLight),
              hintStyle: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 12.sp),
              fillColor: ColorManger.backgroundItem,
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManger.backgroundItem,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(10.r, 10.r)),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            style: TextStyle(
                color:
                    context.read<AccountInformationCubit>().isTextFormFieldEnabl
                        ? ColorManger.brun
                        : ColorManger.brunLight),
            controller:
                context.read<AccountInformationCubit>().userNameController,
            enabled:
                context.read<AccountInformationCubit>().isTextFormFieldEnabl,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isNameValid(value)) {
                return context.translate(AppStrings.pleaseEnterAValidName);
              }
              return null;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManger.backgroundItem,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(10.r, 10.r)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManger.backgroundItem,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(10.r, 10.r)),
              ),
              prefixIcon: Icon(IconlyBroken.profile,
                  size: 18.sp, color: ColorManger.brunLight),
              fillColor: ColorManger.backgroundItem,
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManger.backgroundItem,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(10.r, 10.r)),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return context
                    .translate(AppStrings.pleaseEnterAValidPhoneNumber);
              }
              return null;
            },
            controller:
                context.read<AccountInformationCubit>().userPhoneController,
            enabled:
                context.read<AccountInformationCubit>().isTextFormFieldEnabl,
            style: TextStyle(
                color:
                    context.read<AccountInformationCubit>().isTextFormFieldEnabl
                        ? ColorManger.brun
                        : ColorManger.brunLight),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManger.backgroundItem,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(10.r, 10.r)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManger.backgroundItem,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(10.r, 10.r)),
              ),
              prefixIcon: Icon(IconlyBroken.call,
                  size: 18.sp, color: ColorManger.brunLight),
              fillColor: ColorManger.backgroundItem,
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManger.backgroundItem,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(10.r, 10.r)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BlocConsumer _accountInformationButton(BuildContext context) {
    return BlocConsumer<AccountInformationCubit, AccountInformationState>(
      listener: (context, state) {
        state.whenOrNull(
          updateAccountInformationError: (apiErrorModel) =>
              ShowToast.showToastErrorTop(
                  errorMessage: apiErrorModel.message!, context: context),
          updateAccountInformationSuccess: (data) {
            ShowToast.showToastSuccessTop(
                message: data.message!, context: context);

            context.read<AccountInformationCubit>().getUserInfo();
            context.read<AccountInformationCubit>().enablTextFormField();
          },
          deleteAccountSuccess: (data) async {
            ShowToast.showToastSuccessTop(
                message: data.message!, context: context);

            context.read<AuthenticationWithGoogleAndAppleCubit>().signOut();

            await AppLogout().logOutThenNavigateToLogin();
          },
          deleteAccountError: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
        );
      },
      builder: (context, state) {
        return Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color:
                  context.read<AccountInformationCubit>().isTextFormFieldEnabl
                      ? ColorManger.brun
                      : ColorManger.redError.withAlpha(200)),
          child: TextButton(
            onPressed: () {
              if (context
                      .read<AccountInformationCubit>()
                      .isTextFormFieldEnabl ==
                  true) {
                if (context
                    .read<AccountInformationCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  context
                      .read<AccountInformationCubit>()
                      .updateAccountInformation();
                }
              } else {
                context.read<AccountInformationCubit>().summitdeleteAccount();
              }
            },
            child: state.maybeWhen(
              updateAccountInformationLoading: () => Row(
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
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontSize: 16.sp,
                        ),
                  ),
                ],
              ),
              deleteAccountLoading: () => Row(
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
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontSize: 16.sp,
                        ),
                  ),
                ],
              ),
              orElse: () => Text(
                context.read<AccountInformationCubit>().isTextFormFieldEnabl
                    ? context.translate(AppStrings.save)
                    : context.translate(AppStrings.deleteAccount),
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontSize: 16.sp,
                    ),
              ),
            ),
          ),
        );
      },
    );
  }
}
