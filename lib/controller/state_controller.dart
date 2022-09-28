import 'package:flutter_riverpod/flutter_riverpod.dart';

final isLoading = StateProvider.autoDispose<bool>((ref) => false);

final currentTime = StateProvider.autoDispose<String>((ref) =>
    '${DateTime.now().hour}'.length != 2
        ? '0${DateTime.now().hour}:${DateTime.now().minute}'
        : '${DateTime.now().hour}:${DateTime.now().minute}');
