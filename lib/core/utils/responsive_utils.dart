import 'package:flutter/material.dart';

class ResponsiveUtils {
  final BuildContext context;

  ResponsiveUtils(this.context);

  /// Get the screen width
  double get screenWidth => MediaQuery.of(context).size.width;

  /// Get the screen height
  double get screenHeight => MediaQuery.of(context).size.height;

  /// Get the block size width (used for responsive scaling)
  double get blockSizeWidth => screenWidth / 100;

  /// Get the block size height (used for responsive scaling)
  double get blockSizeHeight => screenHeight / 100;

  /// Adjust the text size based on the device's screen size.
  double setTextSize(double size) {
    return (size * blockSizeWidth);
  }

  /// Adjust the icon size based on the device's screen size.
  double setIconSize(double size) {
    return (size * blockSizeWidth);
  }

  /// Adjust the width for responsive design.
  double setWidth(double width) {
    return (width * blockSizeWidth);
  }

  /// Adjust the height for responsive design.
  double setHeight(double height) {
    return (height * blockSizeHeight);
  }

  /// Adjust padding using block size.
  EdgeInsetsGeometry setPadding({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return EdgeInsets.only(
      left: setWidth(left ?? 0),
      top: setHeight(top ?? 0),
      right: setWidth(right ?? 0),
      bottom: setHeight(bottom ?? 0),
    );
  }

  /// Adjust margin using block size.
  EdgeInsetsGeometry setMargin({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return EdgeInsets.only(
      left: setWidth(left ?? 0),
      top: setHeight(top ?? 0),
      right: setWidth(right ?? 0),
      bottom: setHeight(bottom ?? 0),
    );
  }

  /// Adjust border radius based on the device's screen size.
  double setBorderRadius(double radius) {
    return (radius * blockSizeWidth);
  }

  /// Create a SizedBox with a specified height or width.
  SizedBox setSizeBox({double? width, double? height, Widget? child}) {
    return SizedBox(
      width: width != null ? setWidth(width) : null,
      height: height != null ? setHeight(height) : null,
      child: child,
    );
  }
}
