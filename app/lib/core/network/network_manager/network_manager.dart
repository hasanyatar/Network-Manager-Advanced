import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../flavors/build_config.dart';
import '../../../../flavors/enviroment.dart';
import '../../exceptions/exceptions.dart';
import 'api_errors/bad_network_api_error.dart';
import 'api_errors/internal_server_api_error.dart';
import 'api_errors/unauthorized_api_error.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/bad_network_error_interceptor.dart';
import 'interceptors/base_interceptors.dart';
import 'interceptors/internal_server_error_interceptor.dart';
import 'interceptors/unauthorized_interceptor.dart';

class NetworkManager {
  final String _baseUrl = BuildConfig.instance.config.baseUrl;
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
      responseBody: BuildConfig.instance.environment == Environment.development,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: _maxLineWidth);

// * Add interseptors

  void _addInterseptors() {
    _dio.interceptors.add(_prettyDioLogger);
    _dio.interceptors.add(BaseInterceptor());
    _dio.interceptors.add(AuthInterceptor());
    _dio.interceptors.add(UnauthorizedInterceptor());
    _dio.interceptors.add(BadNetworkErrorInterceptor());
    _dio.interceptors.add(InternalServerErrorInterceptor());
  }

  Future<Response> post(String path, dynamic data) async {
    try {
      return await _dio.post(path, data: data);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on UnauthorizedApiError {
      throw UnauthenticatedException();
    } on DioError {
      throw ApiException();
    }
  }

  Future<Response> put(String path, dynamic data) async {
    try {
      return await _dio.put(path, data: data);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on UnauthorizedApiError {
      throw UnauthenticatedException();
    } on DioError {
      throw ApiException();
    }
  }

  Future<Response> delete(String path) async {
    try {
      return await _dio.delete(path);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on UnauthorizedApiError {
      throw UnauthenticatedException();
    } on DioError {
      throw ApiException();
    }
  }

  Future<Response> get(String path) async {
    try {
      return await _dio.get(path);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on UnauthorizedApiError {
      throw UnauthenticatedException();
    } on DioError {
      throw ApiException();
    }
  }

// * Configure Dio to use base url and headers.

  BaseOptions _myBaseOptions() => BaseOptions(
        baseUrl: _baseUrl,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        headers: _headers,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      );

  Map<String, dynamic>? get _headers {
    return null;
  }
}
