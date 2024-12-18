part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;

  const factory OrderState.getAllOrderLoading() = GetAllOrderLoading;

  const factory OrderState.getAllOrderError(ApiErrorModel apiErrorModel) =
      GetAllOrderError;

  const factory OrderState.getAllOrderSuccess(List<GetAllOrderData> data) =
      GetAllOrderSuccess;

  const factory OrderState.acceptOrderLoading() = AcceptOrderLoading;

  const factory OrderState.acceptOrderError(ApiErrorModel apiErrorModel) =
      AcceptOrderError;

  const factory OrderState.acceptOrderSuccess(OrderAcceptResponse data) =
      AcceptOrderSuccess;

  const factory OrderState.updateLocalOrder(OrderAcceptResponse data) =
      UpdateLocalOrder;

  const factory OrderState.cancelOrderLoading() = CancelOrderLoading;

  const factory OrderState.cancelOrderError(ApiErrorModel apiErrorModel) =
      CancelOrderError;

  const factory OrderState.cancelOrderSuccess(ApiSuccessGeneralModel data) =
      CancelOrderSuccess;

  const factory OrderState.isExpanded(int isExpanded) = IsExpanded;


  
  const factory OrderState.getAllAcceptOrderLoading() = GetAllAcceptOrderLoading;

  const factory OrderState.getAllAcceptOrderError(ApiErrorModel apiErrorModel) =
      GetAllAcceptOrderError;

  const factory OrderState.getAllAcceptOrderSuccess(List<GetAllOrderData> data) =
      GetAllAcceptOrderSuccess;




  const factory OrderState.getAllCancelOrderLoading() = GetAllCancelOrderLoading;

  const factory OrderState.getAllCancelOrderError(ApiErrorModel apiErrorModel) =
      GetAllCancelOrderError;

  const factory OrderState.getAllCancelOrderSuccess(List<GetAllOrderData> data) =
      GetAllCancelOrderSuccess;





  const factory OrderState.getAllDeliverdOrderLoading() = GetAllDeliverdOrderLoading;

  const factory OrderState.getAllDeliverdOrderError(ApiErrorModel apiErrorModel) =
      GetAllDeliverdOrderError;

  const factory OrderState.getAllDeliverdOrderSuccess(List<GetAllOrderData> data) =
      GetAllDeliverdOrderSuccess;


}
