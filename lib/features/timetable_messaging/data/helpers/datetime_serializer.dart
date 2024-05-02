import 'package:fsre_notifier/_all.dart';

class DateTimeSerializer implements JsonConverter<DateTime, dynamic> {
  const DateTimeSerializer();

  @override
  DateTime fromJson(dynamic json) {
    return DateTime.parse(json as String).toLocal();
  }

  @override
  dynamic toJson(DateTime object) {
    return object.toIso8601String();
  }
}
