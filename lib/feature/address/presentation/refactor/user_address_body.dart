import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class UserAddressBody extends StatelessWidget {
  final UserAddressState state;
  const UserAddressBody({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    if (state is GetAllAddressError || state is GetAllAddressLoading) {
      return const UserAddressErrorAndLoadingStateWidget();
    }
    if (context.read<UserAddressCubit>().addressDataList.isEmpty) {
      return const EmptyAddressScreen();
    }

    return const UserAddressSuccessStateWidget();
  }
}
