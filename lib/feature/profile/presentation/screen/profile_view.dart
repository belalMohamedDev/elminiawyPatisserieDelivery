import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorManger.brun,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    context.read<ChangeUserDeliveryImageCubit>().getUserImage();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileBody(),
    );
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorManger.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    super.dispose();
  }
}
