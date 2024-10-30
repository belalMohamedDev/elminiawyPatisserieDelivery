import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final Color? borderColor;
  final Widget? widget;
  final double height;
  final double width;
  final double radius;
  final String? defaultText;

  const CustomButton(
      {super.key,
      this.color,
      required this.onPressed,
      this.widget,
      this.height = 4.8,
      this.width = double.infinity,
      this.radius = 2,
      this.borderColor,
      this.defaultText});

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    final buttonColor = color ??
        (onPressed == null ? ColorManger.unselectedButton : ColorManger.brun);
    return Container(
      height: responsive.setHeight(height),
      width: responsive.setWidth(width),
      decoration: BoxDecoration(
          border: borderColor != null
              ? Border.all(
                  color: borderColor!) // Ensure borderColor is not null
              : null,
          borderRadius:
              BorderRadius.circular(responsive.setBorderRadius(radius)),
          color: buttonColor),
      child: TextButton(
          onPressed: onPressed,
          child: widget ??
              Text(context.translate(defaultText!),
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: responsive.setTextSize(3.8),
                      ))),
    );
  }
}
