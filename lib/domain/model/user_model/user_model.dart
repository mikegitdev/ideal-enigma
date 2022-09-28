import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  final User? user;
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  const UserModel({this.user, this.accessToken, this.refreshToken});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel copyWith({
    User? user,
    String? accessToken,
    String? refreshToken,
  }) {
    return UserModel(
      user: user ?? this.user,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [user, accessToken, refreshToken];
}
