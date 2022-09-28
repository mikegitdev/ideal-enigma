import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:lms/firebase_options.dart';
import 'package:lms/services/storages/get_storage.dart';

class FirebaseMessageToken {
  static Future init() async {
    // final getIt = GetIt.instance;

    // getIt<FirebaseService>();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    String? token = await FirebaseMessaging.instance.getToken();
    if (token!.length >= 10) {
      if (kDebugMode) {
        print(token);
      }
      await loginBox.write('userToken', token);
    }
    // FirebaseMessaging messaging = FirebaseMessaging.instance;
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
    return FirebaseMessageToken();
  }
}
