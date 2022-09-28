//Text Editing Controller Providers
import 'package:lms/app_library/presentation/basic_library.dart';

// ? Login Page
final idNumberCtr = StateProvider.autoDispose<TextEditingController>(
    (ref) => TextEditingController());

final idPassCtr = StateProvider.autoDispose<TextEditingController>(
    (ref) => TextEditingController());
