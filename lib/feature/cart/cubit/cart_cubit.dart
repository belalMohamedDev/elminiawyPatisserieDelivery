
import '../../../../../core/common/shared/shared_imports.dart'; //

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this._cartRepositoryImplement) : super(const CartState.initial());
  final CartRepositoryImplement _cartRepositoryImplement;
  CartResponse? cartData;

  int quantityItem = 1;
  static const int _retryLimit = 3;
  int _retryCount = 0;

  final TextEditingController applyCouponController = TextEditingController();

  Future<void> addItemToCart(String productId) async {
    emit( CartState.addItemToCartLoading(productId));

    final response = await _cartRepositoryImplement.addItemToCart(
        AddItemToCartRequestBody(product: productId, quantity: quantityItem));

    response.when(
      success: (dataResponse) {
        quantityItem = 1;
        cartData = dataResponse;

        emit(CartState.addItemToCartSuccess(dataResponse, quantityItem));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            CartState.deleteCartItemError(
                error),
          );
        }
      },
    );
  }

  void increaseQuantity() {
    emit(CartState.updateQuantityNumber(quantityItem++));
  }

  void decreaseQuantity() {
    if (quantityItem > 1) {
      emit(CartState.updateQuantityNumber(quantityItem--));
    }
  }

  Future<void> getCartItem() async {
    emit(const CartState.getCartItemLoading());

    final response = await _cartRepositoryImplement.getCartItem();

    response.when(
      success: (dataResponse) {
        cartData = dataResponse;
     
        emit(CartState.getCartItemSuccess(dataResponse));
      },
      failure: (error) async {
        if (error.statusCode != 401) {
          if (_retryCount < _retryLimit) {
            _retryCount++;
            await getCartItem(); // Retry the request
          } else {
            emit(
              CartState.getCartItemError(
                error),
            );
            _retryCount = 0;
          }
        }
      },
    );
  }

  //------------------------------------------------------------------------

  Future<void> removeItem(String id) async {
    emit(const CartState.deleteCartItemLoading());

    final response = await _cartRepositoryImplement.removeItemFromCart(id);

    response.when(
      success: (dataResponse) {
        cartData = dataResponse;

        emit(CartState.getCartItemSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            CartState.deleteCartItemError(
               error),
          );
        }
      },
    );
  }

  Future<void> updateQuantityToItem(String id, int quantity) async {
    emit(CartState.updateQuantityItemLoading(id, quantity));

    final response =
        await _cartRepositoryImplement.updateItemQuantityFromCart(id, quantity);

    response.when(
      success: (dataResponse) {
        cartData = dataResponse;

        emit(CartState.getCartItemSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            CartState.deleteCartItemError(
               error),
          );
        }
      },
    );
  }

  //------------------------------------------------------------------------

  Future<void> removeCartLogic() async {
    emit(const CartState.deleteCartLoading());

    final response = await _cartRepositoryImplement.removeCartRepo();

    response.when(
      success: (dataResponse) {
        cartData = dataResponse;

        emit(CartState.getCartItemSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            CartState.deleteCartItemError(
                error),
          );
        }
      },
    );
  }

  //------------------------------------------------------------------------

  Future<void> applyCoupon() async {
    if (applyCouponController.text.isNotEmpty) {
      emit(const CartState.applyCouponLoading());

      final response = await _cartRepositoryImplement
          .applyCouponToCart(applyCouponController.text.trim());

      response.when(
        success: (dataResponse) {
          cartData = dataResponse;

          applyCouponController.clear();

          emit(CartState.getCartItemSuccess(dataResponse));
        },
        failure: (error) {
          applyCouponController.clear();

          if (error.statusCode != 401) {
            emit(
              CartState.deleteCartItemError(
                error),
            );
          }
        },
      );
    }
  }
}
