import '../../../../../core/common/shared/shared_imports.dart'; //

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._homeRepository) : super(const CategoryState.initial());
  final HomeRepositoryImplement _homeRepository;

  Future<void> getCategories({String sort = 'createdAt'}) async {
    emit(const CategoryState.getCategoriesLoading());

    final response = await _homeRepository.getCategories(sort);

    response.when(
      success: (dataResponse) {
        emit(CategoryState.getCategoriesSuccess(dataResponse));
      },
      failure: (error) {
        emit(
          CategoryState.getCategoriesError(error),
        );
      },
    );
  }
}
