import 'package:fsre_notifier/_all.dart';

class TimetableDatabaseRepository {
  const TimetableDatabaseRepository({
    required TimetableDatabaseApi timetableDatabaseApi,
  }) : _timetableDatabaseApi = timetableDatabaseApi;

  final TimetableDatabaseApi _timetableDatabaseApi;

  Future<TimetableDatabase> getTimetableDatabase() async {
    return _timetableDatabaseApi.getTimetableDatabase();
  }

  Future<List<TimetableStudyProgram>> getTimetableDatabaseClasses() async {
    return (await getTimetableDatabase()).studyPrograms;
  }
}
