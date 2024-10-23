import '../../../../../core/common/shared/shared_imports.dart'; //

part 'wish_list_state.dart';
part 'wish_list_cubit.freezed.dart';

class WishListCubit extends Cubit<WishListState> {
  WishListCubit(
    this._wishListRepository,
  ) : super(const WishListState.initial());
  final WishListRepositoryImplement _wishListRepository;

  Map<String, bool> favorites = {};
  List<WishListProductData> dataList = [];

  Future<void> getWishList() async {
    emit(const WishListState.getWishListLoading());

    final response = await _wishListRepository.getWishList();

    response.when(
      success: (dataResponse) {
        dataList = [];

        dataList.addAll(dataResponse.data!);

        for (var element in dataResponse.data!) {
          if (element.inWishlist == true) {
            favorites[element.sId!] = element.inWishlist!;
          }
        }

        emit(WishListState.getWishListSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            WishListState.getWishListError(
                error),
          );
        }
      },
    );
  }

  Future<void> addOrRemoveProductFromWish(String productId) async {
    // Update the local state immediately
    final bool isFavorite = favorites[productId] ?? false;
    favorites[productId] = !isFavorite;
    emit(WishListState.updateFavoriteState(favorites));

    // Emit loading state for the API call
    emit(const WishListState.addOrRemoveProductFromWishListLoading());

    final response =
        await _wishListRepository.addOrRemoveProductFromWishList(productId);

    response.when(
      success: (dataResponse) {
        dataList = [];
        favorites = {};

        dataList.addAll(dataResponse.data!);

        for (var element in dataResponse.data!) {
          if (element.inWishlist == true) {
            favorites[element.sId!] = element.inWishlist!;
          }
        }
        emit(WishListState.addOrRemoveProductFromWishListSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          favorites[productId] = !favorites[productId]!;

          emit(
            WishListState.addOrRemoveProductFromWishListError(
              error),
          );
        }
      },
    );
  }
}
