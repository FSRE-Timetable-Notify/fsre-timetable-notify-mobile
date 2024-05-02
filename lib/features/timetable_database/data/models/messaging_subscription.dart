import 'package:fsre_notifier/_all.dart';

part 'messaging_subscription.freezed.dart';
part 'messaging_subscription.g.dart';

@freezed
class MessagingSubscription with _$MessagingSubscription {
  const factory MessagingSubscription({
    required String id,
    required String fcmToken,
    required int studyProgramId,
  }) = _MessagingSubscription;

  factory MessagingSubscription.fromJson(Map<String, dynamic> json) =>
      _$MessagingSubscriptionFromJson(json);
}
