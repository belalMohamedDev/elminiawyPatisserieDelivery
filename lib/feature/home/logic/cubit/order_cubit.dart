import 'package:driver/core/common/shared/shared_imports.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this._homeRepositoryImplement) : super(const OrderState.initial());
 final HomeRepositoryImplement _homeRepositoryImplement;

  Future<void> fetchOrders() async {
    emit(const OrderState.getAllOrderLoading());

    final response = await _homeRepositoryImplement.getOrdersRepo();

    response.when(
      success: (dataResponse) {
        emit(OrderState.getAllOrderSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            OrderState.getAllOrderError(error),
          );
        }
      },
    );
  }

    void startPolling() {
    Timer.periodic(const Duration(seconds: 30), (timer) {
      fetchOrders();
    });
  }
}
