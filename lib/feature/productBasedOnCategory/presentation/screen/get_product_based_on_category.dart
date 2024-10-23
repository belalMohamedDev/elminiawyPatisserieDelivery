import '../../../../../core/common/shared/shared_imports.dart'; //

class ProductBaseOnCategory extends StatefulWidget {
  const ProductBaseOnCategory(
      {super.key, required this.categoryId, required this.categoryName});

  final String categoryId;
  final String categoryName;

  @override
  State<ProductBaseOnCategory> createState() => _ProductBaseOnCategoryState();
}

class _ProductBaseOnCategoryState extends State<ProductBaseOnCategory> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        context
            .read<ProductBasedOnCategoryCubit>()
            .getProductBasedOnCategory(widget.categoryId)
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.categoryName,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 16.sp)),
      ),
      body: const ProductBaseOnCategoryBody(),
    );
  }
}
