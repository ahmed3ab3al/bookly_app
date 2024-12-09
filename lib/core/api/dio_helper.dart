// ignore_for_file: avoid_print
import 'package:bookly_app/core/api/api_helper.dart';
import 'package:bookly_app/core/api/end_points.dart';
import 'package:bookly_app/core/errors/exception.dart';
import 'package:dio/dio.dart';


import 'api_interceptors.dart';

class DioHelper extends ApiHelper {
  final Dio dio;

  DioHelper({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }

  @override
  Future get(String url,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }



}
