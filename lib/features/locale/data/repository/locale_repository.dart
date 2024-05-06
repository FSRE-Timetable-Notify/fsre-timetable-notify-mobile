import 'package:fsre_notifier/_all.dart';

class LocaleRepository {
  LocaleRepository({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  Locale getLocale() {
    final localeString = _sharedPreferences.getString('localeString');

    return localeString == null
        ? AppLocalizations.supportedLocales
                .where(
                  (locale) =>
                      locale.languageCode ==
                      Platform.localeName.split('_').first,
                )
                .firstOrNull ??
            const Locale('en')
        : Locale(localeString);
  }

  Future<void> setLocale(Locale locale) async {
    await _sharedPreferences.setString('localeString', locale.toLanguageTag());
  }
}
