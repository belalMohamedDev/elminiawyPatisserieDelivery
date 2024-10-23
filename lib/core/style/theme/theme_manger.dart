import '../../../../../core/common/shared/shared_imports.dart'; //

ThemeData getApplicationTheme(BuildContext context) {
  final responsive = ResponsiveUtils(context);

  return ThemeData(
      scaffoldBackgroundColor: ColorManger.white,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }),

// //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: ColorManger.brun,
        textStyle: getSemiBoldStyle(
          fontSize: 14.sp,
          color: ColorManger.white,
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
        fixedSize: Size.fromHeight(40.h),
      )),
//
// //appbar theme
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
              color: ColorManger.brun, size: responsive.setIconSize(5)),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManger.white,
              statusBarIconBrightness: Brightness.dark),
          color: ColorManger.white),

// //text theme
//
      textTheme: TextTheme(
// using in text on boarding
        titleLarge: getMediumStyle(
          fontSize: responsive.setTextSize(5),
          color: ColorManger.brun,
        ),

        //using in profile page
        headlineSmall: getMediumStyle(
          fontSize: responsive.setTextSize(5),
          color: ColorManger.white,
        ),

        bodySmall: getMediumStyle(
          fontSize: responsive.setTextSize(5),
          color: Colors.grey.shade500,
        ),

        titleSmall: getMediumStyle(
          fontSize: responsive.setTextSize(5),
          color: ColorManger.black,
        ),

        bodyLarge: TextStyle(
          fontSize: responsive.setTextSize(3),
          color: ColorManger.brunLight,
        ),

        titleMedium: getMediumStyle(
          fontSize: responsive.setTextSize(5),
          color: ColorManger.brunLight,
        ),

        bodyMedium: getMediumStyle(
          fontSize: responsive.setTextSize(5),
          color: Colors.black38,
        ),
      ),

//

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.brown.shade50,
        showUnselectedLabels: true,
      ),

// input decoration theme ( text form field )
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 8.0),
        prefixStyle: getMediumStyle(
          fontSize: 13.sp,
          color: ColorManger.black26,
        ),
        hintStyle: getMediumStyle(
          fontSize: 11.sp,
          color: ColorManger.black26,
        ),
        errorStyle: TextStyle(
            fontSize: 11.sp,
            fontFamily: FontConsistent.geLocalozedFontFamily(),
            fontWeight: FontWeight.w500),
        prefixIconColor: WidgetStateColor.resolveWith((states) =>
            states.contains(WidgetState.focused)
                ? ColorManger.brunLight
                : ColorManger.black26),
        suffixIconColor: WidgetStateColor.resolveWith((states) =>
            states.contains(WidgetState.focused)
                ? ColorManger.brunLight
                : ColorManger.black26),
        labelStyle: getMediumStyle(
          fontSize: 10.sp,
          color: ColorManger.black26,
        ),
        filled: true,
        fillColor: ColorManger.white,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManger.selected),
            borderRadius:
                BorderRadius.circular(responsive.setBorderRadius(2.5))),
        enabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(responsive.setBorderRadius(2.5)),
            borderSide:
                BorderSide(color: ColorManger.unselected, width: 0.4.w)),
        errorBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(responsive.setBorderRadius(2.5)),
            borderSide: BorderSide(color: ColorManger.redError, width: 0.4.w)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(responsive.setBorderRadius(2.5)),
            borderSide: BorderSide(color: ColorManger.redError, width: 0.4.w)),
      ));
}
