part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;

      //get category State
  const factory CategoryState.getCategoriesLoading() = GetCategoriesLoading;
  const factory CategoryState.getCategoriesError(
     ApiErrorModel apiErrorModel) = GetCategoriesError;

  const factory CategoryState.getCategoriesSuccess(CategoryResponse data) =
      GetCategoriesSuccess;


}
