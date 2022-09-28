import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:lms/domain/model/user_model/user_model.dart';
import 'package:lms/services/network/dio_exception.dart';
import 'package:lms/services/network/dio_service.dart';

class UserRepository {
  final LmsDataDio lmsDataDio;

  UserRepository(this.lmsDataDio);

  Future getUsersRequested(
    String deviceID,
    deviceType,
    deviceName,
    deviceToken,
    userName,
    userPassword,
  ) async {
    try {
      final response = await lmsDataDio.userDio(
        deviceID,
        deviceType,
        deviceName,
        deviceToken,
        userName,
        userPassword,
      );
      if (kDebugMode) {
        print('---------------------------');
      }
      // final users =
      //     (response.data as List).map((e) => UserModel.fromJson(e)).toList();
      // print(users);

      final user = UserModel.fromJson(response.data);
      if (kDebugMode) {
        print(user.user!.id);
        print("===================");
        print(user.refreshToken);
      }
      return user;
    } on DioError catch (e) {
      if (kDebugMode) {
        print('111111---------------------------');
      }
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  // Future<UserLoggedIn> addNewUserRequested(String name, String job) async {
  //   try {
  //     final response = await lmsDataDio.addUserApi(name, job);
  //     return UserLoggedIn.fromJson(response.data);
  //   } on DioError catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e).toString();
  //     throw errorMessage;
  //   }
  // }

  // Future<UserLoggedIn> updateUserRequested(
  //     int id, String name, String job) async {
  //   try {
  //     final response = await userApi.updateUserApi(id, name, job);
  //     return UserLoggedIn.fromJson(response.data);
  //   } on DioError catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e).toString();
  //     throw errorMessage;
  //   }
  // }

  // Future<void> deleteNewUserRequested(int id) async {
  //   try {
  //     await userApi.deleteUserApi(id);
  //   } on DioError catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e).toString();
  //     throw errorMessage;
  //   }
  // }
}
