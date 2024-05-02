import 'package:fsre_notifier/_all.dart';

class ApiModeCubit extends Cubit<bool> {
  ApiModeCubit({
    required SharedPreferences sharedPreferences,
  })  : _sharedPreferences = sharedPreferences,
        super(!sharedPreferences.containsKey("isApiClientDebugMode")
            ? kDebugMode
            : sharedPreferences.getBool("isApiClientDebugMode") ?? false);

  final SharedPreferences _sharedPreferences;

  Future<void> toggle() async {
    await _sharedPreferences.setBool(
      "isApiClientDebugMode",
      !state,
    );
    GetIt.I<ApiClient>().isDebugMode = !GetIt.I<ApiClient>().isDebugMode;

    emit(!state);
  }
}
