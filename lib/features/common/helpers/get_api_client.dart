import 'package:fsre_notifier/_all.dart';

Future<ApiClient> getApiClient(SharedPreferences sharedPreferences) async {
  final isDebugMode = !sharedPreferences.containsKey("isApiClientDebugMode")
      ? kDebugMode
      : sharedPreferences.getBool("isApiClientDebugMode") ?? false;

  return ApiClient(
    isDebugMode: isDebugMode,
  );
}
