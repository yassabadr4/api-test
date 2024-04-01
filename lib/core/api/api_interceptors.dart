import 'package:api_test/core/errors/exceptions.dart';
import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor{
@override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept-Language'] = 'en';
    super.onRequest(options, handler);
  }
  //@override
//   Future delete(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     bool isFormData = false,
//   }) async {
//     try {
//       final response = await dio.delete(path,
//           data: isFormData ? FormData.fromMap(data) : data,
//           queryParameters: queryParameters);
//
//       return response.data;
//     } on DioException catch (e) {
//       handelDioException(e);
//     }
//   }
//
//   @override
//   Future get(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     bool isFormData = false,
//   }) async {
//     try {
//       final response = await dio.get(path,
//           data: isFormData ? FormData.fromMap(data) : data,
//           queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       handelDioException(e);
//     }
//   }
//
//   @override
//   Future patch(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     bool isFormData = false,
//   }) async {
//     try {
//       final response = await dio.get(path,
//           data: isFormData ? FormData.fromMap(data) : data,
//           queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       handelDioException(e);
//     }
//   }
//
//   @override
//   Future post(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     bool isFormData = false,
//   }) async {
//     try {
//       final response = await dio.get(path,
//           data: isFormData ? FormData.fromMap(data) : data,
//           queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       handelDioException(e);
//     }
//   }
//
//   @override
//   Future put(String path,
//       {Object? data,
//       Map<String, dynamic>? queryParameters,
//       bool isFormData = false
//       })async {
//    try {
//      final response = await dio.put(path, data: isFormData ? FormData.fromMap(data) : data,
//       queryParameters: queryParameters,
//       );
//       return response.data;
//    } on DioException catch (e) {
//      handelDioException(e);
}