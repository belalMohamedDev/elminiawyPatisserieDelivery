part of 'change_user_delivery_image_cubit.dart';

@freezed
class ChangeUserDeliveryImageState with _$ChangeUserDeliveryImageState {
  const factory ChangeUserDeliveryImageState.initial() = _Initial;
  const factory ChangeUserDeliveryImageState.changeUserDeliveryImageLoading() =
      ChangeUserDeliveryImageLoading;
  const factory ChangeUserDeliveryImageState.changeUserDeliveryImageError(
      ApiErrorModel apiErrorModel) = ChangeUserDeliveryImageError;

  const factory ChangeUserDeliveryImageState.changeUserDeliveryImageSuccess(
      AuthResponse authResponse,String image) = ChangeUserDeliveryImageSuccess;

  const factory ChangeUserDeliveryImageState.getStorageData(String userName) =
      GetStorageData;

        const factory ChangeUserDeliveryImageState.imagePath(
    File imagesPath) = ChangeUserDeliveryImagePath;

}
