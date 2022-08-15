import 'package:dio/dio.dart';

import '../../network_information/network_connect_info.dart';
import '../api_errors/bad_network_api_error.dart';

class BadNetworkErrorInterceptor extends Interceptor {
  final NetworkConnectInformation _networkConnectInfo = NetworkConnectInformation.instance;

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    super.onRequest(options, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response == null && !await _networkConnectInfo.isConnectedWithNetwork()) {
      return BadNetworkApiError(dioError: err);
    }
    super.onError(err, handler);
  }
}
