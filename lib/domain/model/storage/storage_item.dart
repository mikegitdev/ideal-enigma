import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_item.freezed.dart';

@freezed
class StorageItem with _$StorageItem {
  const factory StorageItem({
    required String key,
    required String value,
  }) = _StorageItem;

  const StorageItem._();
}
