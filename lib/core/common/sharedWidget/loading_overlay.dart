import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file


class LoadingOverlay extends StatelessWidget {
  final bool isLoading;

  const LoadingOverlay({
    super.key,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);

    return Stack(
      children: [
        if (isLoading) ...[
          Opacity(
            opacity: 0.2,
            child: Container(
              color: ColorManger.black,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Center(
            child: Container(
              height: responsive.setHeight(10),
              width: responsive.setWidth(22),
              decoration: BoxDecoration(
                color: ColorManger.brun,
                borderRadius: BorderRadius.circular(responsive.setBorderRadius(2)),
              ),
              child: Center(
                child: CircularProgressIndicator(
                  color: ColorManger.white,
                  strokeWidth: 3,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
