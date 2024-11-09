part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;

  const factory OrderState.getAllOrderLoading() = GetAllOrderLoading;

  const factory OrderState.getAllOrderError(ApiErrorModel apiErrorModel) =
      GetAllOrderError;

  const factory OrderState.getAllOrderSuccess(GetAllOrderResponse data) =
      GetAllOrderSuccess;

  const factory OrderState.acceptOrderLoading() = AcceptOrderLoading;

  const factory OrderState.acceptOrderError(ApiErrorModel apiErrorModel) =
      AcceptOrderError;

  const factory OrderState.acceptOrderSuccess(OrderAcceptResponse data) =
      AcceptOrderSuccess;

  const factory OrderState.updateLocalOrder(OrderAcceptResponse data) = UpdateLocalOrder;

  const factory OrderState.cancelOrderLoading() = CancelOrderLoading;

  const factory OrderState.cancelOrderError(ApiErrorModel apiErrorModel) =
      CancelOrderError;

  const factory OrderState.cancelOrderSuccess(ApiSuccessGeneralModel data) =
      CancelOrderSuccess;


        const factory OrderState.isExpanded(bool  isExpanded) =
      IsExpanded;
}
