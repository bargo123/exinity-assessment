import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_exception.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/domain/repository/get_symbols_repository.dart';
import 'package:exinity_assessment/domain/usecase/get_symbols_use_case.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetSymbolsRepository extends Mock implements GetSymbolsRepository {}

void main() {
  late GetSymbolsUseCase getSymbolsUseCase;
  late MockGetSymbolsRepository mockRepository;

  setUp(() {
    diContainer
        .registerSingleton<GetSymbolsRepository>(MockGetSymbolsRepository());
    mockRepository =
        diContainer<GetSymbolsRepository>() as MockGetSymbolsRepository;
    getSymbolsUseCase = GetSymbolsUseCase(repository: mockRepository);
  });

  tearDown(() {
    diContainer.reset();
  });

  group('GetSymbolsUseCase', () {
    test('getSymbols returns successfully', () async {
      final symbols = [
        SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: ''),
        SymbolModel(displaySymbol: 'USD/JPY', description: '', symbol: ''),
      ];

      when(() => mockRepository.getSymbols())
          .thenAnswer((_) => TaskEither.right(symbols));

      final result = await getSymbolsUseCase().run();

      result.fold(
        (leftValue) {
          fail('Expected success, but got an error: $leftValue');
        },
        (rightValue) {
          expect(rightValue, symbols);
        },
      );

      verify(() => mockRepository.getSymbols()).called(1);
    });

    test('getSymbols returns an error', () async {
      when(() => mockRepository.getSymbols()).thenAnswer((_) => TaskEither.left(
          HttpApiException(message: 'Failed to fetch symbols')));

      final result = await getSymbolsUseCase().run();

      result.fold(
        (leftValue) {
          expect(leftValue.toString(), contains('Failed to fetch symbols'));
        },
        (rightValue) {
          fail('Expected an error, but got success: $rightValue');
        },
      );

      verify(() => mockRepository.getSymbols()).called(1);
    });
  });
}
