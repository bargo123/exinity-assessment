import 'package:exinity_assessment/core/constants/remote_constants.dart';
import 'package:exinity_assessment/core/constants/query_constants.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/api_client_base.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_exception.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_response.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/data/repository/get_symbols_repository_impl.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/domain/repository/get_symbols_repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockApiClientBase extends Mock implements ApiClientBase {}

void main() {
  late GetSymbolsRepository repository;
  late MockApiClientBase mockApiClient;

  setUp(() {
    diContainer.registerSingleton<ApiClientBase>(MockApiClientBase());
    mockApiClient = diContainer<ApiClientBase>() as MockApiClientBase;
    repository = GetSymbolsRepositoryImpl(apiClient: mockApiClient);
    dotenv.testLoad(mergeWith: {
      'API_KEY': 'mocked_api_key',
    });
  });
  tearDown(() {
    diContainer.reset();
  });

  group('GetSymbolsRepositoryImpl', () {
    test('getSymbols success', () async {
      final response = [
        {
          "displaySymbol": "EUR/USD",
          "symbol": "EUR/USD",
          "description": "Euro / US Dollar"
        }
      ];

      when(() => mockApiClient.get(
                RemoteConstants.symbolPath,
                queryParams: {
                  QueryConstants.exchange: 'oanda',
                  QueryConstants.token: dotenv.env['API_KEY'],
                },
              ))
          .thenAnswer((_) => TaskEither.right(HttpApiResponse(
              data: response, statusCode: 200, statusMessage: "OK")));

      final result = await repository.getSymbols().run();
      result.fold(
        (l) => fail('Should not fail'),
        (r) {
          expect(r, isA<List<SymbolModel>>());
          expect(r.length, 1);
          expect(r.first.displaySymbol, 'EUR/USD');
        },
      );

      verify(() => mockApiClient.get(
            RemoteConstants.symbolPath,
            queryParams: {
              QueryConstants.exchange: 'oanda',
              QueryConstants.token: dotenv.env['API_KEY'],
            },
          )).called(1);
    });

    test('getSymbols failure', () async {
      when(() => mockApiClient.get(
                RemoteConstants.symbolPath,
                queryParams: {
                  QueryConstants.exchange: 'oanda',
                  QueryConstants.token: dotenv.env['API_KEY']
                },
              ))
          .thenAnswer((_) =>
              TaskEither.left(const HttpApiException(message: 'API error')));

      final result = await repository.getSymbols().run();

      result.fold(
        (l) {
          expect(l, isA<HttpApiException>());
          expect(l.toString(), contains('API error'));
        },
        (r) => fail('Should not succeed'),
      );

      verify(() => mockApiClient.get(
            RemoteConstants.symbolPath,
            queryParams: {
              QueryConstants.exchange: 'oanda',
              QueryConstants.token: dotenv.env['API_KEY'],
            },
          )).called(1);
    });
  });
}
