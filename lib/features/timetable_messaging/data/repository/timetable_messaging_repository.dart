import 'package:fsre_notifier/_all.dart';

class FcmTokenNotFoundException implements Exception {
  @override
  String toString() =>
      "FCM token not found. Make sure the app is allowed to send notifications.";
}

class TimetableMessagingRepository {
  const TimetableMessagingRepository({
    required SharedPreferences sharedPreferences,
    required TimetableMessagingApi timetableMessagingApi,
  })  : _sharedPreferences = sharedPreferences,
        _timetableMessagingApi = timetableMessagingApi;

  final SharedPreferences _sharedPreferences;
  final TimetableMessagingApi _timetableMessagingApi;

  Future<MessagingSubscription> addSubscription(int studyProgramId) async {
    await _sharedPreferences.setInt(
      "selectedStudyProgramId",
      studyProgramId,
    );

    final fcmToken = await FirebaseMessaging.instance.getToken();

    if (fcmToken == null) {
      throw FcmTokenNotFoundException();
    }

    return await _timetableMessagingApi.addMessagingSubscription(
      fcmToken,
      studyProgramId,
    );
  }

  Future<void> removeSubscription(TimetableKey timetableKey) async {
    await _sharedPreferences.remove("selectedStudyProgramId");

    final fcmToken = await FirebaseMessaging.instance.getToken();

    if (fcmToken == null) {
      throw FcmTokenNotFoundException();
    }

    await _timetableMessagingApi.removeMessagingSubscription(
      fcmToken,
      timetableKey.studyProgramId,
    );
  }

  StreamSubscription<RemoteMessage> registerForegroundListener(
      void Function(TimetableRefreshEvent) callback) {
    return FirebaseMessaging.onMessage.listen((message) async {
      final data = await FirebaseMessagingRepository.handleFirebaseMessage(
        message: message,
        sharedPreferences: _sharedPreferences,
        timetableMessagingRepository: this,
      );

      callback(data);
    });
  }

  Future<List<TimetableRefreshEvent>> reloadMessageHistory(
      TimetableKey timetableKey) async {
    await _sharedPreferences.reload();

    List<String>? storedHistory;
    try {
      storedHistory = _sharedPreferences.getStringList(
          "timetableRefreshEventItemsHistory-${formatTimetableKey(timetableKey)}");
    } catch (e) {
      debugPrint("$e");
      await _sharedPreferences.remove(
          "timetableRefreshEventItemsHistory-${formatTimetableKey(timetableKey)}");
    }

    final history = storedHistory != null
        ? storedHistory
            .map((e) => TimetableRefreshEvent.fromJson(
                jsonDecode(e) as Map<String, dynamic>))
            .toList()
        : <TimetableRefreshEvent>[];

    return history;
  }

  Future<List<TimetableRefreshEvent>> updateMessageHistory(
      TimetableRefreshEvent timetableRefreshEvent) async {
    final storedHistory =
        await reloadMessageHistory(timetableRefreshEvent.timetableKey);

    final List<TimetableRefreshEvent> newHistory = [
      timetableRefreshEvent,
      ...storedHistory,
    ];

    await _sharedPreferences.setStringList(
      "timetableRefreshEventItemsHistory-${formatTimetableKey(timetableRefreshEvent.timetableKey)}",
      newHistory.map((e) => jsonEncode(e.toJson())).toList(),
    );

    return newHistory;
  }

  Future<void> clearMessageHistory(TimetableKey timetableKey) async {
    await _sharedPreferences.remove(
        "timetableRefreshEventItemsHistory-${formatTimetableKey(timetableKey)}");
  }

  Future<void> clearAllMessageHistory() async {
    final keys = _sharedPreferences.getKeys().where((key) {
      return key.startsWith("timetableRefreshEventItemsHistory-");
    });

    for (final key in keys) {
      await _sharedPreferences.remove(key);
    }
  }
}
