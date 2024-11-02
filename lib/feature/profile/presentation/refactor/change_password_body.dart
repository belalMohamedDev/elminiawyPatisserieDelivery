import 'package:driver/core/common/shared/shared_imports.dart';

class ChangeUserPasswordBody extends StatelessWidget {
  const ChangeUserPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 18.w, right: 18.w, top: 30.h, bottom: 50.h),
      child: Form(
        key: context.read<ChangeMyPasswordCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              obscureText: !context
                  .watch<ChangeMyPasswordCubit>()
                  .isCurrentPasswordVisible,
              controller: context
                  .read<ChangeMyPasswordCubit>()
                  .currentPasswordController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPasswordValid(value)) {
                  return context.translate(AppStrings.pleaseEnterValidPassword);
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: context.translate(AppStrings.currentPassword),
                suffixIcon: IconButton(
                  icon: Icon(
                    context
                            .watch<ChangeMyPasswordCubit>()
                            .isCurrentPasswordVisible
                        ? IconlyBroken.show
                        : IconlyBroken.hide,
                    size: 22.sp,
                    color: ColorManger.brunLight,
                  ),
                  onPressed: () {
                    context
                        .read<ChangeMyPasswordCubit>()
                        .togglePasswordVisibility('current');
                  },
                ),
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
                  !context.watch<ChangeMyPasswordCubit>().isPasswordVisible,
              style: TextStyle(color: ColorManger.brunLight),
              controller:
                  context.read<ChangeMyPasswordCubit>().passwordController,
              onChanged: (value) {
                context.read<ChangeMyPasswordCubit>().validatePassword(value);
              },
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPasswordValid(value)) {
                  return AppStrings.pleaseEnterValidPassword;
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: context.translate(AppStrings.newPassword),
                suffixIcon: IconButton(
                  icon: Icon(
                    context.watch<ChangeMyPasswordCubit>().isPasswordVisible
                        ? IconlyBroken.show
                        : IconlyBroken.hide,
                    size: 22.sp,
                    color: ColorManger.brunLight,
                  ),
                  onPressed: () {
                    context
                        .read<ChangeMyPasswordCubit>()
                        .togglePasswordVisibility('new');
                  },
                ),
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
              obscureText: !context
                  .watch<ChangeMyPasswordCubit>()
                  .isPasswordConfirmVisible,
              style: TextStyle(color: ColorManger.brunLight),
              controller: context
                  .read<ChangeMyPasswordCubit>()
                  .passwordConfirmController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPasswordValid(value)) {
                  return AppStrings.pleaseEnterValidPassword;
                } else if (value.trim() !=
                    context
                        .read<ChangeMyPasswordCubit>()
                        .passwordController
                        .text
                        .trim()) {
                  return context.translate(
                      AppStrings.newPasswordAndConfirmPasswordNotMatching);
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: context.translate(AppStrings.confirmNewUserPassword),
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
                    context
                            .watch<ChangeMyPasswordCubit>()
                            .isPasswordConfirmVisible
                        ? IconlyBroken.show
                        : IconlyBroken.hide,
                    size: 22.sp,
                    color: ColorManger.brunLight,
                  ),
                  onPressed: () {
                    context
                        .read<ChangeMyPasswordCubit>()
                        .togglePasswordVisibility('confirm');
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
            _instructionsTextColumn(context),
            SizedBox(
              height: 50.h,
            ),
            _submitPasswordChangeButton(context)
          ],
        ),
      ),
    );
  }

  BlocBuilder _submitPasswordChangeButton(BuildContext context) {
    return BlocBuilder<ChangeMyPasswordCubit, ChangeMyPasswordState>(
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            if (context
                .read<ChangeMyPasswordCubit>()
                .formKey
                .currentState!
                .validate()) {
              context.read<ChangeMyPasswordCubit>().submitPasswordChange();
            }
          },
          widget: state.maybeWhen(
            changeMyPasswordLoading: () => Row(
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
                  AppStrings.loading,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: 16.sp,
                      ),
                ),
              ],
            ),
            orElse: () => Text(
              context.translate(AppStrings.submit),
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: 16.sp,
                  ),
            ),
          ),
        );
      },
    );
  }

  BlocConsumer _instructionsTextColumn(BuildContext context) {
    return BlocConsumer<ChangeMyPasswordCubit, ChangeMyPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
            changeMyPasswordError: (apiErrorModel) =>
                ShowToast.showToastErrorTop(
                    errorMessage: apiErrorModel.message!, context: context),
            changeMyPasswordSuccess: (authResponse) {
              ShowToast.showToastSuccessTop(
                  message: authResponse.message!, context: context);

              // Navigate to the map screen after a successful login
              AppLogin().storeData(authResponse);
            });
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.translate(AppStrings
                    .passwordMustBeAtLeast8CharactersAndShouldInclude),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color:
                        context.read<ChangeMyPasswordCubit>().lengthTextColor,
                    fontSize: 12.sp),
              ),
              SizedBox(height: 15.h),
              Text(
                context.translate(AppStrings.upperCaseLetter),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontFamily: FontConsistent.fontFamilyAcme,
                    color: context
                        .read<ChangeMyPasswordCubit>()
                        .upperCaseTextColor,
                    fontSize: 12.sp),
              ),
              SizedBox(height: 15.h),
              Text(
                context.translate(AppStrings.lowerCaseLetter),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: context
                        .read<ChangeMyPasswordCubit>()
                        .lowerCaseTextColor,
                    fontSize: 12.sp),
              ),
              SizedBox(height: 15.h),
              Text(
                context.translate(AppStrings.number),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color:
                        context.read<ChangeMyPasswordCubit>().numberTextColor,
                    fontSize: 12.sp),
              ),
              SizedBox(height: 15.h),
              Text(
                context.translate(AppStrings.specialCharacter),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: context
                        .read<ChangeMyPasswordCubit>()
                        .specialCharTextColor,
                    fontSize: 12.sp),
              ),
            ],
          ),
        );
      },
    );
  }
}
