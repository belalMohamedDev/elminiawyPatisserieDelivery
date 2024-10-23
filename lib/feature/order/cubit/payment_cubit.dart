import '../../../../../core/common/shared/shared_imports.dart'; //

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this._orderRepositoryImplement)
      : super(const PaymentState.initial());
  int selectedIndex = 0;
  String choosePaymentMethod = 'Cash';
  final OrderRepositoryImplement _orderRepositoryImplement;
  TextEditingController notesController = TextEditingController();
  CreateOrderResponseData? createOrderResponseData;
  List<GetOrdersResponseData> getCurrentOrders = [];
  List<GetOrdersResponseData> getPerviousOrders = [];

  void changeShippingIndex(int index) {
    selectedIndex = index;
    emit(PaymentState.changeShippingIndex(selectedIndex));
  }

  void changePaymentMethod(String choosePayment) {
    choosePaymentMethod = choosePayment;
    emit(PaymentState.choosePayment(choosePaymentMethod));
  }

  Future<void> createCashOrderSummit(String shippingAddressId,String nearbyStoreAddress) async {
    emit(const PaymentState.createCashOrderLoading());

    final response = await _orderRepositoryImplement.createCashOrder(
        CreateOrderRequestBody(
            shippingAddress: shippingAddressId,
            nearbyStoreAddress:nearbyStoreAddress,
            notes: notesController.text.trim()));

    response.when(
      success: (response) {
        createOrderResponseData = response.data;
        emit(PaymentState.createCashOrderSuccess(response));
      },
      failure: (error) {
        emit(
          PaymentState.createCashOrderError(
              error),
        );
      },
    );
  }

  Future<void> ordercancelSummit(String id) async {
    emit(const PaymentState.createCashOrderLoading());

    final response =
        await _orderRepositoryImplement.orderCancelledRepository(id);

    response.when(
      success: (response) {
        
        createOrderResponseData = response.data;
        emit(PaymentState.createCashOrderSuccess(response));
      },
      failure: (error) {
        emit(
          PaymentState.createCashOrderError(
              error),
        );
      },
    );
  }

  Future<void> getCompleteOrdersSummit() async {
    emit(const PaymentState.getCompleteOrdersLoading());

    final response =
        await _orderRepositoryImplement.getAllOrderCompleteRepository();

    response.when(
      success: (response) {
        getPerviousOrders = [];
        getPerviousOrders = response.data ?? []; // Ensure non-null

        emit(PaymentState.getCompleteOrdersSuccess(response));
      },
      failure: (error) {
        emit(
          PaymentState.getCompleteOrdersError(
            error),
        );
      },
    );
  }

  Future<void> getOrdersPendingSummit() async {
    emit(const PaymentState.getCompleteOrdersLoading());

    final response =
        await _orderRepositoryImplement.getAllOrderPendingRepository();

    response.when(
      success: (response) {
        getCurrentOrders = [];
        getCurrentOrders = response.data ?? []; // Ensure non-null

        emit(PaymentState.getCompleteOrdersSuccess(response));
      },
      failure: (error) {
        emit(
          PaymentState.getCompleteOrdersError(
           error),
        );
      },
    );
  }
}
