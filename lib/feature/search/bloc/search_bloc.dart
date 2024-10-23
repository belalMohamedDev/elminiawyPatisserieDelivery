import '../../../../../core/common/shared/shared_imports.dart';
part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchInProductRepository _searchInProductRepository;

  int selectedOption =
      1; // 1: A to Z, 2: Z to A, 3: Low to High, 4: High to Low
  RangeValues selectedRange = const RangeValues(0, 2000);

  SearchBloc(this._searchInProductRepository) : super(const _Initial()) {
    on<SearchEvent>(_onSearchEvent);
  }

  Future<void> _onSearchEvent(
      SearchEvent event, Emitter<SearchState> emit) async {
    if (event is _SearchText) {
      await searchInProductFetch(event, emit);
    } else if (event is _UpdateSelectedOption) {
      updateSelectedOption(event.option, emit);
    } else if (event is _UpdateSelectedRange) {
      updateSelectedRange(event.range, emit);
    }
  }

  Future<void> searchInProductFetch(
      SearchEvent event, Emitter<SearchState> emit) async {
    await event.whenOrNull(
      searchText: (value) async {
        emit(const SearchState.loading());

        // Prepare price range as a string
        final priceRange = "${selectedRange.start}-${selectedRange.end}";

        // Prepare sort option as a string based on selectedOption
        String sort = "";
        switch (selectedOption) {
          case 1:
            sort = "-title"; // Name: A to Z
            break;
          case 2:
            sort = "title"; // Name: Z to A
            break;
          case 3:
            sort = "price"; // Price: Low to High
            break;
          case 4:
            sort = "-price"; // Price: High to Low
            break;
        }

        // Attempt to fetch search results with price range and sort option
        final response = await _searchInProductRepository.searchInProduct(
            keyword: value.trim(), priceRange: priceRange, sort: sort);

        // Handle the search response
        response.when(
          success: (searchResponse) {
            emit(SearchState.loaded(searchResponse));
          },
          failure: (error) {
            emit(SearchState.error(
                error)); // Emit error state with error details
          },
        );
      },
    );
  }



  // Update selected sorting option
  void updateSelectedOption(int option, Emitter<SearchState> emit) {
    selectedOption = option;
    emit(SearchState.optionUpdated(
        selectedOption)); // Emit state to trigger UI update
  }

  // Update selected price range
  void updateSelectedRange(RangeValues range, Emitter<SearchState> emit) {
    selectedRange = range;
    emit(SearchState.rangeUpdated(
        selectedRange)); // Emit state to trigger UI update
  }

  // Debounce function to prevent sending too many requests
  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).switchMap(mapper);
  }
}
