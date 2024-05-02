import 'package:fsre_notifier/_all.dart';

abstract class TimetableMessagingApi {
  const TimetableMessagingApi();

  Future<MessagingSubscription> addMessagingSubscription(
    String fcmToken,
    int studyProgramId,
  );

  Future<void> removeMessagingSubscription(
    String fcmToken,
    int studyProgramId,
  );
}
