part of 'product_based_on_category_cubit.dart';

@freezed
class ProductBasedOnCategoryState with _$ProductBasedOnCategoryState {
  const factory ProductBasedOnCategoryState.initial() = _Initial;

  // Get Product State
  const factory ProductBasedOnCategoryState.getProductLoading() =
      GetProductBasedOnCategoryLoading;
  const factory ProductBasedOnCategoryState.getProductError(
      ApiErrorModel apiErrorModel) = GetProductBasedOnCategoryError;
  const factory ProductBasedOnCategoryState.getProductSuccess(
      GetProductsBasedOnCategory data) = GetProductBasedOnCategorySuccess;

  // Filter Product List State
  const factory ProductBasedOnCategoryState.filterProductListSuccess(
      List<Products>? data) = FilterProductListSuccess;

  const factory ProductBasedOnCategoryState.changeCategoryIndex(int index) =
      ChangeCategoryIndex;
}
