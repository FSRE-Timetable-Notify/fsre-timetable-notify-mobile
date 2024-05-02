import 'package:fsre_notifier/_all.dart';

String formatDate(DateTime date) {
  final formatted =
      "${date.year}-${(date.month).toString().padLeft(2, "0")}-${date.day.toString().padLeft(2, "0")}";

  return formatted;
}

String formatTimetableKey(TimetableKey timetableKey) {
  return "timetable-updated-${timetableKey.studyProgramId}_${timetableKey.yearWeek}";
}

String getISOWeekFromDate(DateTime date) {
  return "${date.year}-W${date.weekNumber.toString().padLeft(2, "0")}";
}

DateTime getStartDateOfISOWeek(String isoWeek) {
  if (!isValidISOWeek(isoWeek)) {
    throw ArgumentError("Invalid ISO week: $isoWeek");
  }

  final parts = isoWeek.split("-W");
  final year = int.parse(parts[0]);
  final weekNumber = int.parse(parts[1]);

  return dateTimeFromWeekNumber(year, weekNumber);
}

bool isValidISOWeek(String isoWeek) {
  final parts = isoWeek.split("-W");
  if (parts.length != 2) {
    return false;
  }

  final year = int.tryParse(parts[0]);
  final weekNumber = int.tryParse(parts[1]);

  if (year == null || weekNumber == null) {
    return false;
  }

  return weekNumber >= 1 && weekNumber <= 53;
}
