import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../flavors/build_config.dart';
import '../../../../flavors/enviroment.dart';

class NetworkManager {
  final String baseUrl = BuildConfig.instance.config.baseUrl;
  late final Dio _dio;
  Dio get service => _dio;
  static NetworkManager instance = NetworkManager._();
  NetworkManager._() {
    _dio = Dio(_myBaseOptions());
    _addInterseptors();
  }
  static const int _maxLineWidth = 90;
  final PrettyDioLogger _prettyDioLogger = PrettyDioLogger(
      requestHeader: true,
      requestBody: false,
      responseBody: BuildConfig.instance.environment == Environment.production,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: _maxLineWidth);

// * Add interseptors

  void _addInterseptors() {
    _dio.interceptors.add(_prettyDioLogger);
    _dio.interceptors.add(
        InterceptorsWrapper(onRequest: _onRequest, onResponse: _onResponse, onError: _onError));
  }

  // * Set up the default options for all requests ,responses and errors.

  void _onError(DioError error, handler) {
    handler.next(error);
  }

  void _onResponse(Response response, handler) {
    handler.next(response);
  }

  void _onRequest(RequestOptions options, handler) {
    handler.next(options);
  }

// * Configure Dio to use base url and headers.

  BaseOptions _myBaseOptions() => BaseOptions(
        baseUrl: baseUrl,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        headers: _headers,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      );

  Map<String, dynamic> get _headers {
    return {};
  }
}
