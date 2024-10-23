import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_exception.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class GetSymbolsRepository {
  TaskEither<HttpApiException, List<SymbolModel>> getSymbols();
}
