import 'dart:convert';

import 'package:driver/core/common/shared/shared_imports.dart';
import 'package:url_launcher/url_launcher.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this._homeRepositoryImplement) : super(const OrderState.initial());
  final HomeRepositoryImplement _homeRepositoryImplement;

  List<GetAllOrderData> orders = [];
  List<GetAllOrderData> acceptedOrders = [];
  List<GetAllOrderData> cancelledOrders = [];
  List<GetAllOrderData> deliveredOrders = [];

  OrderAcceptResponse? orderAcceptResponse;

  bool isExpanded = false;

  Future<void> launchPhoneDialer() async {
    final Uri phoneUri = Uri(
        scheme: 'tel', path: orderAcceptResponse!.data!.shippingAddress!.phone);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }

  int? expandedIndex;
  int? expandedDeliveredIndex;

  void togelExpandedBottomSheet(int index) {
    expandedIndex = (expandedIndex == index) ? -1 : index;
    emit(
      OrderState.isExpanded(expandedIndex!),
    );
  }

    void togelExpandedDeliveredOrderBottomSheet(int index) {
    expandedDeliveredIndex = (expandedDeliveredIndex == index) ? -1 : index;
    emit(
      OrderState.isExpanded(expandedDeliveredIndex!),
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

//////////////////////////////////////

  Future<void> fetchGetCancellOrders() async {
    emit(const OrderState.getAllCancelOrderLoading());

    final response = await _homeRepositoryImplement.getCancelledOrderRepo();

    response.when(
      success: (dataResponse) {
        cancelledOrders = [];
        cancelledOrders.addAll(dataResponse.data!);

        emit(OrderState.getAllCancelOrderSuccess(orders));
      },
      failure: (error) {
        emit(
          OrderState.getAllCancelOrderError(error),
        );
      },
    );
  }

  Future<void> fetchGetAcceptedOrders() async {
    emit(const OrderState.getAllAcceptOrderLoading());

    final response =
        await _homeRepositoryImplement.getAcceptedDeliveredOrderRepo();

    response.when(
      success: (dataResponse) {
        acceptedOrders = [];
        acceptedOrders.addAll(dataResponse.data!);

        emit(OrderState.getAllAcceptOrderSuccess(orders));
      },
      failure: (error) {
        emit(
          OrderState.getAllAcceptOrderError(error),
        );
      },
    );
  }

  Future<void> fetchGetOrdersDelivered() async {
    emit(const OrderState.getAllDeliverdOrderLoading());

    final response = await _homeRepositoryImplement.getDeliveredOrderRepo();

    response.when(
      success: (dataResponse) {
        deliveredOrders = [];
        deliveredOrders.addAll(dataResponse.data!);

    

        emit(OrderState.getAllDeliverdOrderSuccess(orders));
      },
      failure: (error) {


        emit(
          OrderState.getAllDeliverdOrderError(error),
        );
      },
    );
  }

  /////////////////////////////////////

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
