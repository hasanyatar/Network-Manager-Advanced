import 'package:dio/dio.dart';

import '../api_errors/unauthorized_api_error.dart';

class UnauthorizedInterceptor extends Interceptor {
  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
      super.onError(err, handler);
      return UnauthorizedApiError(dioError: err);
    }

    super.onError(err, handler);
  }
}
