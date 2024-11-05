import 'package:driver/core/common/shared/shared_imports.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this._homeRepositoryImplement) : super(const OrderState.initial());
  final HomeRepositoryImplement _homeRepositoryImplement;

  List<GetAllOrderData> orders = [];

  Future<void> fetchOrders(String? latitude, String? longitude) async {
    emit(const OrderState.getAllOrderLoading());

    final response =
        await _homeRepositoryImplement.getOrdersRepo(latitude, longitude);

    response.when(
      success: (dataResponse) {
        if (dataResponse.data!.isNotEmpty) {
          orders = [];
          orders.addAll(dataResponse.data!);
        }

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

  Future<void> fetchAcceptOrders(String orderId) async {
    emit(const OrderState.acceptOrderLoading());

    final response = await _homeRepositoryImplement.acceptOrderRepo(orderId);

    response.when(
      success: (dataResponse) {
        orders.removeWhere((order) => order.sId != orderId);

        emit(OrderState.acceptOrderSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            OrderState.acceptOrderError(error),
          );
        }
      },
    );
  }

  Future<void> fetchCanceledOrders(
      String orderId, String? latitude, String? longitude) async {
    emit(const OrderState.cancelOrderLoading());

    final response = await _homeRepositoryImplement.canceledOrderRepo(orderId);

    response.when(
      success: (dataResponse) async {
        orders.removeWhere((order) => order.sId == orderId);
        if (orders.isEmpty) {
          await fetchOrders(latitude, longitude);
        }

        emit(OrderState.cancelOrderSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            OrderState.cancelOrderError(error),
          );
        }
      },
    );
  }
}
