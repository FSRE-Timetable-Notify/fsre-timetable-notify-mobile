import 'package:fsre_notifier/_all.dart';

class FirebaseRepository {
  FirebaseRepository();

  late final FirebaseMessaging _firebaseMessaging;

  Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    _firebaseMessaging = FirebaseMessaging.instance;
  }

  FirebaseMessaging get firebaseMessaging => _firebaseMessaging;
}
