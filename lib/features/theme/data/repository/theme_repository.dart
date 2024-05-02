import 'package:fsre_notifier/_all.dart';

class ThemeRepository {
  ThemeRepository({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  ThemeMode getThemeMode() {
    final themeMode = _sharedPreferences.getString('themeMode');
    return themeMode == null
        ? ThemeMode.system
        : themeMode == 'dark'
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    await _sharedPreferences.setString(
        'themeMode', themeMode.toString().split('.').last);
  }
}
