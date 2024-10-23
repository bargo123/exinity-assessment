import 'package:dio/dio.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/api_client_base.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_exception.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_response.dart';
import 'package:fpdart/fpdart.dart';

class DioApiClient extends ApiClientBase {
  DioApiClient(this._dio);

  final Dio _dio;

  @override
  TaskEither<HttpApiException, HttpApiResponse<T>> get<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  }) {
    return TaskEither.tryCatch(
      () async {
        final response = await _dio.get<T>(
          path,
          queryParameters: queryParams,
          options: Options(headers: headers),
        );

        return HttpApiResponse<T>(
          data: response.data,
          statusCode: response.statusCode,
          statusMessage: response.statusMessage,
        );
      },
      _mapException,
    );
  }

  HttpApiException _mapException(Object error, StackTrace stackTrace) {
    if (error case final DioException dioException) {
      if (dioException.type == DioExceptionType.connectionTimeout ||
          dioException.type == DioExceptionType.connectionError ||
          dioException.type == DioExceptionType.receiveTimeout ||
          dioException.type == DioExceptionType.sendTimeout) {
        return HttpApiException(
          message: 'ConnectionException',
          statusCode: error.response?.statusCode,
        );
      } else {
        return HttpApiException(
          message: error.toString(),
          statusCode: error.response?.statusCode,
        );
      }
    } else {
      return HttpApiException(
        message: error.toString(),
      );
    }
  }
}
