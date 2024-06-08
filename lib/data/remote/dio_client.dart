import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'api_service.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late Dio _dio;
  late ApiService _apiService;

  DioClient._internal() {
    _dio = Dio();
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
      compact: true,
    ));
    _dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 300),
      receiveTimeout: const Duration(seconds: 200),
    );

    _apiService = ApiService(_dio);
  }

  ApiService get apiService => _apiService;
}
