import 'package:dio/dio.dart';

class ServiceDioProvider {
  final dio = Dio();

  Dio getDio() {
    return dio;
  }
}
