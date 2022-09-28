import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:lms/services/network/endpoints.dart';
import 'package:logger/logger.dart';

class LmsDataDio {
  final logger = Logger();

  Future userDio(
    String deviceID,
    deviceType,
    deviceName,
    deviceToken,
    userName,
    userPassword,
  ) async {
    var dio = Dio();
    // print("here is state");
    dio.options.connectTimeout = Endpoints.connectionTimeout;
    dio.options.receiveTimeout = Endpoints.receiveTimeout; // 15 seconds
    dio.options.sendTimeout = 0;
    try {
      final response = await dio.post(
        Endpoints.baseUrlTest + Endpoints.auth,
        data: {'username': userName, 'password': userPassword},
        options: Options(headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'X-TENANT-ID': 1,
          'X-DEVICE-ID': deviceID,
          'X-DEVICE-TYPE': deviceType,
          'X-DEVICE-NAME': deviceName,
          'X-DEVICE-TOKEN': deviceToken
        }),
      );

      log(response.data.toString());
      return response;
    } on DioError catch (e) {
      return e.toString();
    }
  }
}
