import 'dart:convert';

import 'package:driver/core/common/shared/shared_imports.dart';
import 'package:url_launcher/url_launcher.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this._homeRepositoryImplement) : super(const OrderState.initial());
  final HomeRepositoryImplement _homeRepositoryImplement;

  List<GetAllOrderData> orders = [];

  OrderAcceptResponse? orderAcceptResponse;

  bool isExpanded = false;

  Future<void> launchPhoneDialer() async {
    final Uri phoneUri = Uri(
        scheme: 'tel',
        path: '${orderAcceptResponse!.data!.shippingAddress!.phone!}');
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      print("Could not launch phone dialer.");
    }
  }

  void togelExpandedBottomSheet() {
    isExpanded = !isExpanded;
    emit(
      OrderState.isExpanded(isExpanded),
    );
  }

  Future<void> fetchOrders(String latitude, String longitude) async {
    emit(const OrderState.getAllOrderLoading());

    final response =
        await _homeRepositoryImplement.getOrdersRepo(latitude, longitude);

    response.when(
      success: (dataResponse) {
        orders = [];
        orders.addAll(dataResponse.data!);

        emit(OrderState.getAllOrderSuccess(orders));
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
        orders = [];
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
        orders = [];
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

  void saveOrderResponse(OrderAcceptResponse orderResponse) async {
    String orderJson = jsonEncode(orderResponse.toJson());
    SharedPrefHelper.setData('orderResponse', orderJson);
  }

  void getOrderResponse() async {
    // Retrieve the JSON string from SharedPreferences
    String? orderJson = SharedPrefHelper.getString('orderResponse');

    // Check if orderJson is null or empty before proceeding
    if (orderJson.isNotEmpty) {
      // Decode the JSON and create the OrderAcceptResponse object
      orderAcceptResponse = OrderAcceptResponse.fromJson(jsonDecode(orderJson));

      // Emit the new state with the updated orderAcceptResponse
      emit(OrderState.updateLocalOrder(orderAcceptResponse!));
    }
  }

  Future<void> clearOrderResponse() async {
    SharedPrefHelper.removeData('orderResponse');
  }
}
