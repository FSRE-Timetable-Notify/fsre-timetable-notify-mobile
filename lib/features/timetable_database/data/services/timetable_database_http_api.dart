import 'package:fsre_notifier/_all.dart';

class TimetableDatabaseHttpException implements Exception {
  @override
  String toString() =>
      "A network error occurred while fetching the timetable database.";
}

class TimetableDatabaseFormatException implements Exception {
  @override
  String toString() =>
      "An error occurred while parsing the timetable database.";
}

class TimetableDatabaseHttpApi extends TimetableDatabaseApi {
  TimetableDatabaseHttpApi({
    required ApiClient apiClient,
    String path = "/timetable-database",
  })  : _apiClient = apiClient,
        _path = path;

  final ApiClient _apiClient;
  final String _path;

  @override
  Future<TimetableDatabase> getTimetableDatabase() async {
    try {
      final response = await _apiClient.get(
        Uri.parse("${_apiClient.baseUrl}$_path"),
        headers: {
          "Content-Type": "application/json; charset=UTF-8",
        },
      );

      final timetableDatabase = TimetableDatabase.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );

      return timetableDatabase;
    } on SocketException catch (e) {
      debugPrint(e.toString());

      throw TimetableDatabaseHttpException();
    } on FormatException catch (e) {
      debugPrint(e.toString());

      throw TimetableDatabaseFormatException();
    }
  }
}
