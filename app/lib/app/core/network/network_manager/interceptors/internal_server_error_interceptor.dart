import 'package:dio/dio.dart';

import '../api_errors/internal_server_api_error.dart';

class InternalServerErrorInterceptor extends Interceptor {
  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response != null) {
      if (err.response!.statusCode != null &&
          err.response!.statusCode! >= 500 &&
          err.response!.statusCode! < 600) {
        return InternalServerApiError(
          dioError: err,
        );
      }
    }

    return null;
  }
}
