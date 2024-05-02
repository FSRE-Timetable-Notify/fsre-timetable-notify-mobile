import 'package:fsre_notifier/_all.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({
    required ThemeRepository themeRepository,
  })  : _themeRepository = themeRepository,
        super(const ThemeState()) {
    _init();
  }

  final ThemeRepository _themeRepository;

  void _init() {
    final themeMode = _themeRepository.getThemeMode();
    emit(ThemeState(themeMode: themeMode));
  }

  void toggleTheme() {
    final newThemeMode =
        state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;

    _themeRepository.setThemeMode(newThemeMode).then((_) {
      emit(ThemeState(themeMode: newThemeMode));
    });
  }

  void setThemeMode(ThemeMode themeMode) {
    _themeRepository.setThemeMode(themeMode).then((_) {
      emit(ThemeState(themeMode: themeMode));
    });
  }
}
