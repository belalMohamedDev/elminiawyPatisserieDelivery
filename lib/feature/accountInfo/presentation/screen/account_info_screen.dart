import '../../../../../core/common/shared/shared_imports.dart'; //

class AccountInfomation extends StatefulWidget {
  const AccountInfomation({super.key});

  @override
  State<AccountInfomation> createState() => _AccountInfomationState();
}

class _AccountInfomationState extends State<AccountInfomation> {
  @override
  void initState() {
    super.initState();
    context.read<AccountInformationCubit>().getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(context.translate(AppStrings.myAccountInformation),
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 16.sp)),
        actions: [
          InkWell(
            onTap: () {
              context.read<AccountInformationCubit>().enablTextFormField();
              context.read<AccountInformationCubit>().getUserInfo();
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: isEnLocale ? 18.w : 0, left: isEnLocale ? 0 : 18.w),
              child: Text(context.translate(AppStrings.edit),
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: ColorManger.primary, fontSize: 15.sp)),
            ),
          )
        ],
      ),
      body: const AccountInfomationBody(),
    );
  }
}
