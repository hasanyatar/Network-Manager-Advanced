import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<RequestOptions> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    SharedPreferences instance = await SharedPreferences.getInstance();

    if (instance.containsKey('token')) {
      options.headers['Authorization'] = 'Bearer ${instance.getString('token')}';
    }

    return options;
  }
}
