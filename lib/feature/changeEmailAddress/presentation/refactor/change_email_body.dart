import '../../../../../core/common/shared/shared_imports.dart'; //

class ChangeEmailBody extends StatelessWidget {
  const ChangeEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 30.h),
      child: Form(
        key: context.read<ChangeEmailAddressCubit>().formKey,
        child: Column(
          children: [
            TextFormField(
              controller: context
                  .read<ChangeEmailAddressCubit>()
                  .newEmailAddressController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return context.translate(AppStrings.pleaseEnterAValidEmailAddress) ;
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: context.translate(AppStrings.newEmailAddress),
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
                prefixIcon: Icon(IconlyBroken.message,
                    size: 18.sp, color: ColorManger.brunLight),
                fillColor: ColorManger.backgroundItem,
                hintStyle: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 12.sp),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              style: TextStyle(color: ColorManger.brunLight),
              controller: context
                  .read<ChangeEmailAddressCubit>()
                  .confirmNewEmailAddressController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return context.translate(AppStrings.pleaseEnterAValidEmailAddress);
                } else if (value.trim() !=
                    context
                        .read<ChangeEmailAddressCubit>()
                        .newEmailAddressController
                        .text
                        .trim()) {
                  return context.translate(AppStrings.emailAddressAndConfirmEmailNotMatching);
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: context.translate(AppStrings.confirmNewEmailAddress) ,
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
                prefixIcon: Icon(IconlyBroken.message,
                    size: 18.sp, color: ColorManger.brunLight),
                fillColor: ColorManger.backgroundItem,
                hintStyle: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 12.sp),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              obscureText:
                  !context.watch<ChangeEmailAddressCubit>().isPasswordVisible,
              style: TextStyle(color: ColorManger.brunLight),
              controller: context
                  .read<ChangeEmailAddressCubit>()
                  .currentPasswordController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPasswordValid(value)) {
                  return    context.translate(AppStrings.pleaseEnterValidPassword) ;
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: context.translate(AppStrings.currentPassword) ,
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
                prefixIcon: Icon(IconlyBroken.lock,
                    size: 18.sp, color: ColorManger.brunLight),
                suffixIcon: IconButton(
                  icon: Icon(
                    context.watch<ChangeEmailAddressCubit>().isPasswordVisible
                        ? IconlyBroken.show
                        : IconlyBroken.hide,
                    size: 22.sp,
                    color: ColorManger.brunLight,
                  ),
                  onPressed: () {
                    context
                        .read<ChangeEmailAddressCubit>()
                        .togglePasswordVisibility();
                  },
                ),
                fillColor: ColorManger.backgroundItem,
                hintStyle: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 12.sp),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            _submitEmailChangeButton(context)
          ],
        ),
      ),
    );
  }

  BlocConsumer _submitEmailChangeButton(BuildContext context) {
    return BlocConsumer<ChangeEmailAddressCubit, ChangeEmailAddressState>(
      listener: (context, state) {
        state.whenOrNull(
            changeEmailAddressError: (apiErrorModel) =>
                ShowToast.showToastErrorTop(
                    errorMessage: apiErrorModel.message!, context: context),
            changeEmailAddressSuccess: (data) {
              ShowToast.showToastSuccessTop(
                  message: data.message!, context: context);
            });
      },
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            if (context
                .read<ChangeEmailAddressCubit>()
                .formKey
                .currentState!
                .validate()) {
              context
                  .read<ChangeEmailAddressCubit>()
                  .submitEmailAddressChange();
            }
          },
          widget: state.maybeWhen(
            changeEmailAddressLoading: () => Row(
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
                  context.translate(AppStrings.loading)  ,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: 16.sp,
                      ),
                ),
              ],
            ),
            orElse: () => Text(
            context.translate(AppStrings.submit)   ,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: 16.sp,
                  ),
            ),
          ),
        );
      },
    );
  }
}
