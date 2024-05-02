import 'package:fsre_notifier/_all.dart';

@pragma('vm:entry-point')
Future<void> firebaseBackgroundMessageHandler(RemoteMessage message) async {
  await FirebaseMessagingRepository.handleFirebaseMessage(
    message: message,
    sharedPreferences: await SharedPreferences.getInstance(),
  );
}
