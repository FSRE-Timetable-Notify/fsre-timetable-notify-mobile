import 'package:fsre_notifier/_all.dart';

final getIt = GetIt.instance;

class Startup {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await SharedPreferencesToolsDebug.init();

    Bloc.observer = GlobalBlocObserver();

    final sharedPreferences = await SharedPreferences.getInstance();
    final apiClient = await getApiClient(sharedPreferences);

    final firebaseRepository = FirebaseRepository();
    await firebaseRepository.init();

    FirebaseMessaging.onBackgroundMessage(firebaseBackgroundMessageHandler);

    getIt.registerSingleton<ApiClient>(
      apiClient,
    );
    getIt.registerSingleton<SharedPreferences>(
      sharedPreferences,
    );
    getIt.registerSingleton<ThemeRepository>(
      ThemeRepository(
        sharedPreferences: sharedPreferences,
      ),
    );
    getIt.registerSingleton<LocaleRepository>(
      LocaleRepository(
        sharedPreferences: sharedPreferences,
      ),
    );
    getIt.registerSingleton<TimetableDatabaseRepository>(
      TimetableDatabaseRepository(
        timetableDatabaseApi: TimetableDatabaseHttpApi(
          apiClient: apiClient,
        ),
      ),
    );
    getIt.registerSingleton<TimetableMessagingRepository>(
      TimetableMessagingRepository(
        sharedPreferences: sharedPreferences,
        timetableMessagingApi: TimetableMessagingHttpApi(
          apiClient: apiClient,
        ),
      ),
    );
    getIt.registerSingleton<FirebaseRepository>(
      firebaseRepository,
    );
  }
}
