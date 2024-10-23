import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_exception.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_response.dart';
import 'package:fpdart/fpdart.dart';

abstract class ApiClientBase {
  TaskEither<HttpApiException, HttpApiResponse<T>> get<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });
}
