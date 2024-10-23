import '../../../../../core/common/shared/shared_imports.dart'; //

part 'product_based_on_category_state.dart';
part 'product_based_on_category_cubit.freezed.dart';

class ProductBasedOnCategoryCubit extends Cubit<ProductBasedOnCategoryState> {
  ProductBasedOnCategoryCubit(this._getProductBasedOnCategoryRepository)
      : super(const ProductBasedOnCategoryState.initial());

  final GetProductBasedOnCategoryRepository
      _getProductBasedOnCategoryRepository;

  List<SubCategoryProductData>? subCategoryProductData = [];
  int categoryIndex = 0;

  Future<void> getProductBasedOnCategory(String categoryId) async {
    emit(const ProductBasedOnCategoryState.getProductLoading());

    final response = await _getProductBasedOnCategoryRepository
        .getProductBasedOnCategory(categoryId);

    response.when(
      success: (dataResponse) {
        if (dataResponse.allProducts!.isNotEmpty) {
          subCategoryProductData = [
            SubCategoryProductData(
              id: "All",
              title: "All Item",
              products: dataResponse.allProducts ?? [],
            ),
            ...?dataResponse.data,
          ];
          // getting the product list for the first subcategory by default.
          getProductList(subCategoryId: subCategoryProductData!.first.id!);
        }

        emit(ProductBasedOnCategoryState.getProductSuccess(dataResponse));
      },
      failure: (error) {
        emit(
          ProductBasedOnCategoryState.getProductError(error),
        );
      },
    );
  }

  void changeCategoryIndex({required int index}) {
    categoryIndex = index;
    emit(ProductBasedOnCategoryState.changeCategoryIndex(categoryIndex));
  }

  void getProductList({required String subCategoryId}) {
    List<Products>? subCategoryProducyList =
        filterSubCategoryListById(subCategoryId);

    emit(ProductBasedOnCategoryState.filterProductListSuccess(
        subCategoryProducyList!));
  }

  List<Products>? filterSubCategoryListById(subCategoryId) {
    return subCategoryProductData
        ?.firstWhere(
          (element) => element.id == subCategoryId,
        )
        .products;
  }
}
