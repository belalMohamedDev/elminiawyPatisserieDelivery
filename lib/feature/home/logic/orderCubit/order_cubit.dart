import 'dart:convert';

import 'package:driver/core/common/shared/shared_imports.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this._homeRepositoryImplement) : super(const OrderState.initial());
  final HomeRepositoryImplement _homeRepositoryImplement;

  List<GetAllOrderData> orders = [];

  Future<void> fetchOrders(String latitude, String longitude) async {
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
        emit(
          OrderState.getAllOrderError(error),
        );
      },
    );
  }

  Future<void> fetchAcceptOrders(String orderId) async {
    emit(const OrderState.acceptOrderLoading());

    final response = await _homeRepositoryImplement.acceptOrderRepo(orderId);

    response.when(
      success: (dataResponse) {
        orders.clear();
        saveOrderResponse(dataResponse);
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
      String orderId, String latitude, String longitude) async {
    emit(const OrderState.cancelOrderLoading());

    final response = await _homeRepositoryImplement.canceledOrderRepo(orderId);

    response.when(
      success: (dataResponse) async {
        orders.clear();
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

  Future<void> saveOrderResponse(OrderAcceptResponse orderResponse) async {
    // Convert to JSON string
    String orderJson = orderResponse.toJson().toString();

    // Save the JSON string
    await SharedPrefHelper.setData('orderResponse', orderJson);
  }

  Future<OrderAcceptResponse?> getOrderResponse() async {
    // Retrieve the JSON string
    String? orderJson = SharedPrefHelper.getString('orderResponse');

    // Parse the JSON string back to the object
    return OrderAcceptResponse.fromJson(jsonDecode(orderJson));
  }

  Future<void> clearOrderResponse() async {
    await SharedPrefHelper.removeData('orderResponse');
  }
}
