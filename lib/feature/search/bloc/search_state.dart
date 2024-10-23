part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loaded(ProductResponse data) = _Loaded;
  const factory SearchState.error(ApiErrorModel apiErrorModel) = _Error;
  const factory SearchState.optionUpdated(int option) = _OptionUpdated;

  const factory SearchState.rangeUpdated(RangeValues range) = _RangeUpdated;
}
