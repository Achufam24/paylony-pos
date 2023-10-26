import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../constants/network_client.dart';


@lazySingleton
class ApiRequester {
  ApiRequester({
    required this.dio,
  });
  final Dio dio;

  Future<Response> getRequest(String request_path) async {
    final response = dio.get(
      '${BASE_URL}${request_path}',
    );
    return response;
  }
}

