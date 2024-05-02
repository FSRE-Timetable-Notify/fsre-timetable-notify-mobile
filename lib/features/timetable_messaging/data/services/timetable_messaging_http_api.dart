import 'package:fsre_notifier/_all.dart';

class TimetableMessagingHttpException implements Exception {
  @override
  String toString() =>
      "A network error occurred while subscribing to a study program.";
}

class TimetableMessagingFcmTokenAlreadyRegisteredException
    implements Exception {
  @override
  String toString() =>
      "The provided FCM token is already registered for this study program.";
}

class TimetableMessagingFormatException implements Exception {
  @override
  String toString() =>
      "An error occurred while parsing the messaging subscription.";
}

class TimetableMessagingHttpApi extends TimetableMessagingApi {
  TimetableMessagingHttpApi({
    required ApiClient apiClient,
    String path = "/messaging",
  })  : _apiClient = apiClient,
        _path = path;

  final ApiClient _apiClient;
  final String _path;

  @override
  Future<MessagingSubscription> addMessagingSubscription(
    String fcmToken,
    int studyProgramId,
  ) async {
    try {
      final response = await _apiClient.post(
        Uri.parse("${_apiClient.baseUrl}$_path/subscribe"),
        headers: {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(
          {
            "fcmToken": fcmToken,
            "studyProgramId": studyProgramId,
          },
        ),
      );

      if (response.statusCode != 200) {
        if (response.statusCode == 409) {
          throw TimetableMessagingFcmTokenAlreadyRegisteredException();
        }
        throw TimetableMessagingHttpException();
      }

      final messagingSubscription = MessagingSubscription.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );

      return messagingSubscription;
    } on SocketException catch (e) {
      debugPrint(e.toString());

      throw TimetableMessagingHttpException();
    } on FormatException catch (e) {
      debugPrint(e.toString());

      throw TimetableMessagingFormatException();
    }
  }

  @override
  Future<void> removeMessagingSubscription(
    String fcmToken,
    int studyProgramId,
  ) async {
    try {
      await _apiClient.post(
        Uri.parse("${_apiClient.baseUrl}$_path/unsubscribe"),
        headers: {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(
          {
            "fcmToken": fcmToken,
            "studyProgramId": studyProgramId,
          },
        ),
      );
    } on SocketException catch (e) {
      debugPrint(e.toString());

      throw TimetableMessagingHttpException();
    }
  }
}
