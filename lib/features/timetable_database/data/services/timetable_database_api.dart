import 'package:fsre_notifier/_all.dart';

abstract class TimetableDatabaseApi {
  const TimetableDatabaseApi();

  Future<TimetableDatabase> getTimetableDatabase();
}
