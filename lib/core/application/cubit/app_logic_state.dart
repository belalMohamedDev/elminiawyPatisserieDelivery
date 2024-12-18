part of 'app_logic_cubit.dart';

@freezed
class AppLogicState with _$AppLogicState {
  const factory AppLogicState.initial() = _Initial;
  const factory AppLogicState.themeChangeMode({required bool isDark}) =
      ThemeChangeModeState;
  const factory AppLogicState.languageChange({required Locale locale}) =
      LanguageChangeState;

   const factory AppLogicState.driverStatusChange(
      {required bool driverNotActive}) = _DriverStatusChange;


         const factory AppLogicState.hideNavigationBarStateChange(
      {required bool hideNavigationBar}) = _HideNavigationBarStateChange;

}
