// Package imports:
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:blocnote/config.dart';
import 'package:blocnote/constants.dart';
import 'package:blocnote/models/app_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

part 'app_interceptors.dart';

class DioClient {
  static DioClient? _singleton;

  // Dio client with default configuration
  final Dio dio = createDioClient();

  DioClient._internal();

  factory DioClient() {
    return _singleton ??= DioClient._internal();
  }

  static Dio createDioClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseApiUrl,
        receiveTimeout: const Duration(seconds: 15), // 15 seconds
        connectTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 15),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
        },
      ),
    );

    dio.interceptors.addAll([
      AppInterceptors(),
      if (Config.DIO_CLIENT_DEBUG_LOG)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
    ]);
    return dio;
  }
}
