import 'package:api_test/core/api/api_consumer.dart';
import 'package:api_test/core/api/api_interceptors.dart';
import 'package:api_test/core/api/end_points.dart';
import 'package:api_test/core/errors/exceptions.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoint.baseUrl;
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
    ));
  }

  @override
  Future delete(String path, {dynamic data, Map<String,
      dynamic>? queryParameters, bool isFormData = false}) async {
    try {
      final response = await dio.delete(path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future get(String path, {dynamic data, Map<String,
      dynamic>? queryParameters, bool isFormData = false}) async {
    try {
      final response = await dio.get(
        path, data: isFormData?FormData.fromMap(data) : data, queryParameters: queryParameters,);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future patch(String path, {dynamic data, Map<String,
      dynamic>? queryParameters, bool isFormData = false}) async {
    try {
      final response = await dio.patch(
          path, data:isFormData?FormData.fromMap(data) : data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future post(String path, {dynamic data, Map<String,
      dynamic>? queryParameters, bool isFormData = false}) async{
  try {
    final response = await dio.post(path,data:isFormData?FormData.fromMap(data) : data,queryParameters: queryParameters);
    return response.data;
  } on DioException catch (e) {
    handelDioException(e);
  }

  }

  @override
  Future put(String path, {dynamic data, Map<String,
      dynamic>? queryParameters, bool isFormData = false})async {

    try {
      final response = await dio.put(path,data: isFormData?FormData.fromMap(data) :data,queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }


}


