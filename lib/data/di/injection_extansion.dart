import 'package:lms/data/di/dependency_injection.dart';

T inject<T extends Object>() {
  return getIt.get<T>();
}
