

import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class ProductGridViewLoadingState extends StatelessWidget {
  final ScrollPhysics? physics;

  const ProductGridViewLoadingState({
    super.key,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        addAutomaticKeepAlives: true,
        shrinkWrap: true,
        physics: physics,
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 0.75,
        children: List.generate(
            8,
            (index) => LoadingShimmer(
                  height: 280.h,
                  width: 153.375.w,
                  borderRadius: 12.r,
                )));
  }
}
