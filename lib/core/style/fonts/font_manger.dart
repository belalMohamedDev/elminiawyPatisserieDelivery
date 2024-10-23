import '../../../../../core/common/shared/shared_imports.dart'; //

class FontConsistent {
  static const String fontFamilyAcme = "Acme";
  static const String fontFamilyCairo = "Cairo";

  static String geLocalozedFontFamily() {
    final currentLanguage = SharedPrefHelper.getString(PrefKeys.prefsLanguage);
    if (currentLanguage == 'ar') {
      return fontFamilyCairo;
    } else {
      return fontFamilyAcme;
    }
  }
}

class FontWeightManger {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}
