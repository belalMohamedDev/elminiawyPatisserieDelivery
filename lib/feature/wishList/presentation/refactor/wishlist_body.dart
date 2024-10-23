import '../../../../../core/common/shared/shared_imports.dart'; //

import '../screen/empty_screen.dart';

class WishListBody extends StatelessWidget {
  const WishListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WishListCubit, WishListState>(
      listener: (context, state) {
        state.whenOrNull(
          getWishListError: (apiErrorModel) => ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!, context: context),
        );
      },
      builder: (context, state) {
        if (state is GetWishListError || state is GetWishListLoading) {
          return const ProductGridViewLoadingState();
        }
        if (context.read<WishListCubit>().dataList.isEmpty) {
          return const EmptyWishListScreen();
        }
        return ProductGridViewSuccessState(
          wishListData: context.read<WishListCubit>().dataList,
        );
      },
    );
  }
}
