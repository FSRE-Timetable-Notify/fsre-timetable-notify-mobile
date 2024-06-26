import 'package:fsre_notifier/_all.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ApiModeCubit(
            sharedPreferences: getIt<SharedPreferences>(),
          ),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(
            themeRepository: getIt<ThemeRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => LocaleCubit(
            localeRepository: getIt<LocaleRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => TimetableDatabaseBloc(
            timetableDatabaseRepository: getIt<TimetableDatabaseRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => TimetableMessagingBloc(
            timetableMessagingRepository: getIt<TimetableMessagingRepository>(),
            sharedPreferences: getIt<SharedPreferences>(),
          ),
        ),
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
          builder: (context, localeState) {
        return BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, themeState) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: AppLocalizations.of(context)?.appTitle ?? "FSRE InTime",
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: themeState.themeMode,
              routerConfig: goRouter,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: localeState.locale,
            );
          },
        );
      }),
    );
  }
}
