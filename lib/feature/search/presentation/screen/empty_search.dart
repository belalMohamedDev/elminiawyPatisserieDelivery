import '../../../../../core/common/shared/shared_imports.dart'; //

class EmptySearchScreen extends StatelessWidget {
  final bool isLoading;
  final String? error;
  const EmptySearchScreen({super.key, this.isLoading = false, this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                width: isLoading
                    ? MediaQuery.of(context).size.width * 0.9
                    : MediaQuery.of(context).size.width * 0.7,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.asset(
                    isLoading ? ImageAsset.searchLoading : ImageAsset.noSearch,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              isLoading
                  ? const SizedBox()
                  : ErrorInfo(
                      title: error ??   context.translate(AppStrings.noResultsFound),
                      description: error != null
                          ? ''
                          :   context.translate(AppStrings.weCouldntFindAnyMatchingResultsForYourSearch) 
                             ,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
