import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../../../flavors/flavors.dart';
import 'interceptors/interceptor.dart';

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
    _dio.interceptors.add(AuthInterceptor());
    _dio.interceptors.add(UnauthorizedInterceptor());
    _dio.interceptors.add(BadNetworkErrorInterceptor());
    _dio.interceptors.add(InternalServerErrorInterceptor());
  }

  Future<Response> post(String path, dynamic data) async {
    try {
      return await _dio.post(path, data: data);
    } on DioError {
      rethrow;
    }
  }

  Future<Response> put(String path, dynamic data) async {
    try {
      return await _dio.put(path, data: data);
    } on DioError {
      rethrow;
    }
  }

  Future<Response> delete(String path) async {
    try {
      return await _dio.delete(path);
    } on DioError {
      rethrow;
    }
  }

  Future<Response> get(String path) async {
    try {
      return await _dio.get(path);
    } on DioError {
      rethrow;
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
