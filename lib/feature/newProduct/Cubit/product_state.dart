part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;

  //get product State
  const factory ProductState.getProductLoading() = GetProductLoading;
  const factory ProductState.getProductError(
      ApiErrorModel apiErrorModel) = GetProductError;

  const factory ProductState.getProductSuccess(ProductResponse data) =
      GetProductSuccess;

  const factory ProductState.addItemToList(
      List<DataProductResponse> getFoundData) = AddItemToList;

  const factory ProductState.selectedRangeState(RangeValues selectedRange) =
      SelectedRangeState;

  const factory ProductState.selectedOptionState(int selectedOption) =
      SelectedOptionState;
}
