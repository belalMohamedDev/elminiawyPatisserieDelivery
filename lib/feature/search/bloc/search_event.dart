part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started() = _Started;
  const factory SearchEvent.searchText(String value) = _SearchText;
   const factory SearchEvent.updateSelectedOption(int option) =
      _UpdateSelectedOption;
  const factory SearchEvent.updateSelectedRange(RangeValues range) =
      _UpdateSelectedRange;


}