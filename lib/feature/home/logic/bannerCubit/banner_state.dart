part of 'banner_cubit.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.initial() = _Initial;
    //get Banner State
  const factory BannerState.getBannersLoading() = GetBannersLoading;
  const factory BannerState.getBannersError(
       ApiErrorModel apiErrorModel) = GetBannersError;

  const factory BannerState.getBannersSuccess(BannerResponse data) =
      GetBannersSuccess;


}
