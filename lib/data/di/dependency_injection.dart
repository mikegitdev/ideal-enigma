import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lms/services/firebase/firebase_init.dart';
import 'package:lms/services/firebase/firebase_token.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  // getIt.registerSingleton(FirebaseService.init());
  getIt.registerSingleton(FirebaseService);
  getIt.registerSingleton(GetStorage.init());
  getIt.registerSingleton(FirebaseMessageToken.init());
}
