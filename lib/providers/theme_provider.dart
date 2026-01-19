import 'package:flutter_riverpod/legacy.dart';

import '../core/core.dart';
import '../utils/utils.dart';

final themeProvider = ChangeNotifierProvider.autoDispose<ThemeProvider>((ref) {
  return ThemeProvider();
});

class ThemeProvider extends ChangeNotifier {
  static const _kThemeModeKey = '__theme_mode__';
  ThemeMode currentThemeMode = ThemeMode.system;

  // bool get isDarkMode => currentTheme == ThemeMode.dark;

  // ThemeMode get currentTheme {
  //   final darkMode = SharedPreferenceService.getBool(_kThemeModeKey);
  //   return darkMode == null
  //       ? ThemeMode.system
  //       : darkMode
  //           ? ThemeMode.dark
  //           : ThemeMode.light;
  // }

  void toggleThemeMode() {
    // currentThemeMode = !isDarkMode ? ThemeMode.dark : ThemeMode.light;
    // SharedPreferenceService.setValue(
    //   _kThemeModeKey,
    //   value: currentThemeMode == ThemeMode.dark,
    // );
    notifyListeners();
  }
}
