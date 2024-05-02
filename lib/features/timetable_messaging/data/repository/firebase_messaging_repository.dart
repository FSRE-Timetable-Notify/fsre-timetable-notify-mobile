import 'package:fsre_notifier/_all.dart';

class FirebaseMessagingRepository {
  static Future<TimetableRefreshEvent> handleFirebaseMessage({
    required RemoteMessage message,
    TimetableMessagingRepository? timetableMessagingRepository,
    SharedPreferences? sharedPreferences,
  }) async {
    sharedPreferences ??= await SharedPreferences.getInstance();

    final timestamp =
        DateTime.parse(message.data["timestamp"] as String).toLocal();
    final newTimetableEvents =
        (jsonDecode(message.data["newTimetableEvents"] as String) as List)
            .map((e) {
      return TimetableEvent.fromJson(e as Map<String, dynamic>);
    }).toList();
    final removedTimetableEvents =
        (jsonDecode(message.data["removedTimetableEvents"] as String) as List)
            .map((e) {
      return TimetableEvent.fromJson(e as Map<String, dynamic>);
    }).toList();
    final timetableKey = TimetableKey.fromJson(
        jsonDecode(message.data["timetableKey"] as String)
            as Map<String, dynamic>);

    final data = TimetableRefreshEvent(
      timestamp: timestamp,
      newTimetableEvents: newTimetableEvents,
      removedTimetableEvents: removedTimetableEvents,
      timetableKey: timetableKey,
    );

    timetableMessagingRepository ??= TimetableMessagingRepository(
      sharedPreferences: sharedPreferences,
      timetableMessagingApi: TimetableMessagingHttpApi(
        apiClient: ApiClient(
          isDebugMode: sharedPreferences.containsKey('isApiClientDebugMode')
              ? kDebugMode
              : sharedPreferences.getBool('isApiClientDebugMode') ?? false,
        ),
      ),
    );

    await timetableMessagingRepository.updateMessageHistory(data);

    return data;
  }
}
