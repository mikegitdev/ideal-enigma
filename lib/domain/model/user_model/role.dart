import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'role.g.dart';

@JsonSerializable()
class Role extends Equatable {
  final String? id;
  final String? name;
  final String? permissions;

  const Role({this.id, this.name, this.permissions});

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  Map<String, dynamic> toJson() => _$RoleToJson(this);

  Role copyWith({
    String? id,
    String? name,
    String? permissions,
  }) {
    return Role(
      id: id ?? this.id,
      name: name ?? this.name,
      permissions: permissions ?? this.permissions,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, name, permissions];
}
