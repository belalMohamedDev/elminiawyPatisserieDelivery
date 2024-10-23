import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class BuildSearchResults extends StatelessWidget {
  const BuildSearchResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        final mapCuibt = context.read<MapCubit>();
        bool isEnLocale = AppLocalizations.of(context)?.isEnLocale ?? true;

        if (state is SearchResults) {
          return Padding(
            padding: responsive.setPadding(
                top: 14, left: isEnLocale ? 6 : 4, right: isEnLocale ? 4 : 6),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: ColorManger.brunLight,
                    borderRadius:
                        BorderRadius.circular(responsive.setBorderRadius(2))),
                constraints: BoxConstraints(
                  maxHeight: responsive.setHeight(40),
                ),
                child: ListView.builder(
                  itemCount: state.predictions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        state.predictions[index].description!,
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontSize: responsive.setTextSize(3.5),
                                ),
                      ),
                      onTap: () {
                        mapCuibt.moveToLocationInTextFormField(
                            state.predictions[index]);

                        // .(predictions[index]);
                      },
                    );
                  },
                ),
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
