import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_exception.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/domain/repository/get_symbols_repository.dart';
import 'package:fpdart/src/task_either.dart';

class GetSymbolsUseCase {
  final GetSymbolsRepository repository;
  GetSymbolsUseCase({required this.repository});
  TaskEither<HttpApiException, List<SymbolModel>> call() {
    return repository.getSymbols();
  }
}
