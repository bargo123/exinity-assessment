import 'package:exinity_assessment/core/constants/remote_constants.dart';
import 'package:exinity_assessment/core/constants/query_constants.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/api_client_base.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_exception.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/domain/repository/get_symbols_repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/src/task_either.dart';

class GetSymbolsRepositoryImpl extends GetSymbolsRepository {
  final ApiClientBase apiClient;

  GetSymbolsRepositoryImpl({required this.apiClient});

  @override
  TaskEither<HttpApiException, List<SymbolModel>> getSymbols() {
    return apiClient.get(RemoteConstants.symbolPath, queryParams: {
      QueryConstants.exchange: "oanda",
      QueryConstants.token: dotenv.env['API_KEY'],
    }).flatMap((response) {
      return TaskEither.tryCatch(() async {
        return SymbolModel.fromJsonList(response.data ?? []);
      }, (e, s) => HttpApiException(message: e.toString()));
    });
  }
}
