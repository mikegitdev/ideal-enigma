// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'storage_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StorageItem {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StorageItemCopyWith<StorageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageItemCopyWith<$Res> {
  factory $StorageItemCopyWith(
          StorageItem value, $Res Function(StorageItem) then) =
      _$StorageItemCopyWithImpl<$Res>;
  $Res call({String key, String value});
}

/// @nodoc
class _$StorageItemCopyWithImpl<$Res> implements $StorageItemCopyWith<$Res> {
  _$StorageItemCopyWithImpl(this._value, this._then);

  final StorageItem _value;
  // ignore: unused_field
  final $Res Function(StorageItem) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StorageItemCopyWith<$Res>
    implements $StorageItemCopyWith<$Res> {
  factory _$$_StorageItemCopyWith(
          _$_StorageItem value, $Res Function(_$_StorageItem) then) =
      __$$_StorageItemCopyWithImpl<$Res>;
  @override
  $Res call({String key, String value});
}

/// @nodoc
class __$$_StorageItemCopyWithImpl<$Res> extends _$StorageItemCopyWithImpl<$Res>
    implements _$$_StorageItemCopyWith<$Res> {
  __$$_StorageItemCopyWithImpl(
      _$_StorageItem _value, $Res Function(_$_StorageItem) _then)
      : super(_value, (v) => _then(v as _$_StorageItem));

  @override
  _$_StorageItem get _value => super._value as _$_StorageItem;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_StorageItem(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StorageItem extends _StorageItem {
  const _$_StorageItem({required this.key, required this.value}) : super._();

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'StorageItem(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageItem &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_StorageItemCopyWith<_$_StorageItem> get copyWith =>
      __$$_StorageItemCopyWithImpl<_$_StorageItem>(this, _$identity);
}

abstract class _StorageItem extends StorageItem {
  const factory _StorageItem(
      {required final String key,
      required final String value}) = _$_StorageItem;
  const _StorageItem._() : super._();

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_StorageItemCopyWith<_$_StorageItem> get copyWith =>
      throw _privateConstructorUsedError;
}
