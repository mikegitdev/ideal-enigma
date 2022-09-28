import 'package:lms/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:lms/app_library/presentation/basic_library.dart';
import 'package:lms/data/di/dependency_injection.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await init();
  runApp(
    const ProviderScope(
      child: LMSMobileApp(),
    ),
  );
}
