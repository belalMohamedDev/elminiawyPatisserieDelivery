part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;

  const factory PaymentState.changeShippingIndex(int index) =
      ChangeShippingIndex;
  const factory PaymentState.choosePayment(String choosePayment) =
      ChoosePayment;

  const factory PaymentState.createCashOrderLoading() = CreateCashOrderLoading;
  const factory PaymentState.createCashOrderError(
     ApiErrorModel apiErrorModel) = CreateCashOrderError;

  const factory PaymentState.createCashOrderSuccess(
      CreateOrderResponse createOrderResponse) = CreateCashOrderSuccess;

  const factory PaymentState.getCompleteOrdersLoading() = GetCompleteOrdersLoading;
  const factory PaymentState.getCompleteOrdersError(
     ApiErrorModel apiErrorModel) = GetCompleteOrdersError;

  const factory PaymentState.getCompleteOrdersSuccess(
      GetOrdersResponse getOrdersResponse) = GetCompleteOrdersSuccess;



        const factory PaymentState.getPendingOrdersLoading() =
      GetPendingOrdersLoading;
  const factory PaymentState.getPendingOrdersError(
      ApiErrorModel apiErrorModel) = GetPendingOrdersError;

  const factory PaymentState.getPendingOrdersSuccess(
      GetOrdersResponse getOrdersResponse) = GetPendingOrdersSuccess;
}
