import '../../../../../core/common/shared/shared_imports.dart'; //

part 'app_logic_state.dart';
part 'app_logic_cubit.freezed.dart';

class AppLogicCubit extends Cubit<AppLogicState> {
  AppLogicCubit() : super(const AppLogicState.initial());

  final PersistentTabController bottomNavBarController =
      PersistentTabController();


  String currentLangCode = 'en';


  bool driverActive = false;

    // Toggle Driver Status
  void toggleDriverStatus(bool value) {
    driverActive = value;
    emit(AppLogicState.driverStatusChange(driverNotActive: driverActive));
  }



  // Get Saved Language from Shared Preferences
  void getSavedLanguage() {
    final result = SharedPrefHelper.containPreference(PrefKeys.prefsLanguage)
        ? SharedPrefHelper.getString(PrefKeys.prefsLanguage)
        : 'en';

    currentLangCode = result;

    emit(AppLogicState.languageChange(locale: Locale(currentLangCode)));
  }

  // Change Language and Update Preferences
  Future<void> _changeLang(String langCode) async {
    await SharedPrefHelper.setData(PrefKeys.prefsLanguage, langCode);
    currentLangCode = langCode;

    // Update the language
    emit(AppLogicState.languageChange(locale: Locale(currentLangCode)));
  }

  // Switch to Arabic
  void toArabic() => _changeLang('ar');

  // Switch to English
  void toEnglish() => _changeLang('en');
}
