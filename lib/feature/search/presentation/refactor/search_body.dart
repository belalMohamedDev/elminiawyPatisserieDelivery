import '../../../../../core/common/shared/shared_imports.dart'; //

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);
    bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: responsive.setHeight(5.5),
                child: TextFormField(
                  onChanged: (value) => context
                      .read<SearchBloc>()
                      .add(SearchEvent.searchText(value)),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText:
                          context.translate(AppStrings.findYourPatisserie),
                      prefixIcon: Icon(IconlyBroken.search,
                          size: responsive.setIconSize(5),
                          color: ColorManger.brunLight),
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: responsive.setTextSize(3.5)),
                      fillColor: ColorManger.backgroundItem,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorManger.backgroundItem,
                        ),
                        borderRadius: BorderRadius.all(Radius.elliptical(
                          responsive.setBorderRadius(2),
                          responsive.setBorderRadius(2),
                        )),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorManger.backgroundItem,
                        ),
                        borderRadius: BorderRadius.all(Radius.elliptical(
                            responsive.setBorderRadius(2),
                            responsive.setBorderRadius(2))),
                      )),
                ),
              ),
            ),
            Container(
              height: responsive.setHeight(5.5),
              margin: responsive.setMargin(
                  right: isEnLocale ? null : 2, left: isEnLocale ? 2 : null),
              decoration: BoxDecoration(
                color: ColorManger.brun,
                borderRadius:
                    BorderRadius.circular(responsive.setBorderRadius(2)),
              ),
              child: IconButton(
                icon: Icon(IconlyBroken.filter, color: ColorManger.white),
                onPressed: () {
                  showSortBottomSheet(context);
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const EmptySearchScreen(
                  isLoading: true,
                ),
                error: (apiErrorModel) => EmptySearchScreen(
                  error: apiErrorModel.message,
                ),
                loaded: (data) {
                  if (data.data!.isEmpty) {
                    return const EmptySearchScreen();
                  }

                  return MultiBlocProvider(
                    providers: [
                      BlocProvider.value(
                        value: instance<CartCubit>(),
                      ),
                      BlocProvider.value(
                        value: instance<WishListCubit>(),
                      ),
                    ],
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 25.h, left: 5.w, right: 5.w),
                      child: ProductGridViewSuccessState(
                        dataList: data.data,
                        isSearchActive: true,
                      ),
                    ),
                  );
                },
                orElse: () {
                  return const SizedBox();
                },
              );
            },
          ),
        )
      ],
    );
  }

  void showSortBottomSheet(BuildContext context) {
    showBarModalBottomSheet(
        elevation: 20.r,
        barrierColor: Colors.black54,
        context: context,
        builder: (context) => BlocProvider.value(
              value: instance<SearchBloc>(),
              child: const FilterBottomSheet(),
            ));
  }
}
