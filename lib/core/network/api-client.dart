import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final token = const FlutterSecureStorage().read(key: 'token');

class ApiService {
  static final Dio dio = Dio(
    BaseOptions(
        baseUrl: 'https://tracman-lm3p.onrender.com/v1',
        headers: {'Authorization': 'Bearer $token'},
        connectTimeout: const Duration(seconds: 1500),
        receiveTimeout: const Duration(seconds: 1500),
        persistentConnection: true),
  );
  ApiService addInterceptors(Dio dio) {
    // dio.interceptors.add(AwesomeDioInterceptor());
    // dio.interceptors.add(AppInterceptors(dio));
    dio.interceptors.add(ApiInterceptor());
    return ApiService();
  }
}

class ApiInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.baseUrl = ApiService.dio.options.baseUrl;
    return handler.next(options);
  }
}