import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class CartBody extends StatelessWidget {
  final CartState state;
  const CartBody({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments.

    if (state is GetCartItemError || state is GetCartItemLoading) {
      return const LoadingCartScreen();
    }

    final cartData = context.read<CartCubit>().cartData;

    if (cartData == null || cartData.data!.cartItems!.isEmpty) {
      return const EmptyCartScreen();
    }

    return SuccessCartScreen(cartData: cartData);
  }
}
