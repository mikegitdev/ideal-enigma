import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'role.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  final String? id;
  final Role? role;
  final String? type;
  final String? username;
  final String? avatar;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'level_id')
  final String? levelId;

  const User({
    this.id,
    this.role,
    this.type,
    this.username,
    this.avatar,
    this.firstName,
    this.lastName,
    this.levelId,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String? id,
    Role? role,
    String? type,
    String? username,
    String? avatar,
    String? firstName,
    String? lastName,
    String? levelId,
  }) {
    return User(
      id: id ?? this.id,
      role: role ?? this.role,
      type: type ?? this.type,
      username: username ?? this.username,
      avatar: avatar ?? this.avatar,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      levelId: levelId ?? this.levelId,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      role,
      type,
      username,
      avatar,
      firstName,
      lastName,
      levelId,
    ];
  }
}
