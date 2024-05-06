import 'package:fsre_notifier/_all.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit({
    required LocaleRepository localeRepository,
  })  : _localeRepository = localeRepository,
        super(
          LocaleState(
            locale: AppLocalizations.supportedLocales
                    .where(
                      (locale) =>
                          locale.languageCode ==
                          Platform.localeName.split('_').first,
                    )
                    .firstOrNull ??
                const Locale('en'),
          ),
        ) {
    _init();
  }

  final LocaleRepository _localeRepository;

  void _init() {
    final locale = _localeRepository.getLocale();
    emit(LocaleState(locale: locale));
  }

  void setLocale(Locale locale) {
    _localeRepository.setLocale(locale).then((_) {
      emit(LocaleState(locale: locale));
    });
  }
}
