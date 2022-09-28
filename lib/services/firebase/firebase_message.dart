import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:lms/services/firebase/firebase_init.dart';

class FirebaseMessage {
  static Future init() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    if (kDebugMode) {
      print('injected back messages');
    }
    return FirebaseMessage;
  }
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  GetIt.instance<FirebaseService>();
  if (kDebugMode) {
    print('Injected background handler :  ${message.messageId}');
  }
}
