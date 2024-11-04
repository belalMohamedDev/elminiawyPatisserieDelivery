part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;

    const factory OrderState.getAllOrderLoading() = GetAllOrderLoading;

  const factory OrderState.getAllOrderError(
      ApiErrorModel apiErrorModel) = GetAllOrderError;

  const factory OrderState.getAllOrderSuccess(GetAllOrderResponse data) =
      GetAllOrderSuccess;
}
