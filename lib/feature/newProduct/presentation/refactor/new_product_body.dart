
import '../../../../../core/common/shared/shared_imports.dart'; //

class NewProductBody extends StatelessWidget {
  const NewProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchRow(),
        SizedBox(
          height: 30.h,
        ),
        Expanded(
          child: BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              if (state is GetProductLoading || state is GetProductError) {
                return const ProductGridViewLoadingState();
              }

              return ProductGridViewSuccessState(
                dataList: context.read<ProductCubit>().dataList,
                grideViewIndex: 16,
              );
            },
          ),
        ),
      ],
    );
  }
}
