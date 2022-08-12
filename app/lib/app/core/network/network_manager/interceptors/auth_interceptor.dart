import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    SharedPreferences instance = await SharedPreferences.getInstance();

    if (instance.containsKey('token')) {
      options.headers['Authorization'] = 'Bearer ${instance.getString('token')}';
    }
    super.onRequest(options, handler);
  }
}
