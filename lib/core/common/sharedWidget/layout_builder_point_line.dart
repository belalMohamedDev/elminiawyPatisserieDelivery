import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class LayoutBuilderPointLine extends StatelessWidget {
  final Axis direction;
  final double dashWidth;
  final double dashHeight;

  const LayoutBuilderPointLine({
    super.key,
    this.direction = Axis.vertical,
    this.dashWidth = 1,
    this.dashHeight = 8,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: direction, //
        children: List.generate(11, (_) {
          return SizedBox(
            width: direction == Axis.vertical ? dashWidth.w : dashHeight.h,
            height: direction == Axis.vertical ? dashHeight.h : dashWidth.w,
            child: DecoratedBox(
              decoration: BoxDecoration(color: ColorManger.offWhite),
            ),
          );
        }),
      );
    });
  }
}
