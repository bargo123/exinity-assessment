import 'package:exinity_assessment/data/data_sources/hive_database/exceptions.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/domain/repository/watchlist_repository.dart';
import 'package:exinity_assessment/domain/usecase/search_product_usecase.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWatchlistRepository extends Mock implements WatchlistRepository {}

void main() {
  late SearchProductUsecase searchProductUsecase;
  late MockWatchlistRepository mockRepository;

  setUp(() {
    diContainer
        .registerSingleton<WatchlistRepository>(MockWatchlistRepository());
    mockRepository =
        diContainer<WatchlistRepository>() as MockWatchlistRepository;
    searchProductUsecase = SearchProductUsecase(repository: mockRepository);
  });

  tearDown(() {
    diContainer.reset();
  });

  group('SearchProductUsecase', () {
    test('searchProducts returns filtered and mapped symbols', () {
      const query = 'EUR';
      final symbols = [
        SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: ''),
        SymbolModel(displaySymbol: 'EUR/JPY', description: '', symbol: ''),
        SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: ''),
      ];

      when(() => mockRepository.isProductInWatchList(any()))
          .thenReturn(const Right(true));

      final result = searchProductUsecase(query, symbols);

      result.fold(
        (left) {
          fail('Expected a right result, but got a left: $left');
        },
        (right) {
          expect(right.length, 3); // EUR/USD and GBP/USD should be returned
        },
      );

      verify(() => mockRepository.isProductInWatchList(any())).called(3);
    });

    test('searchProducts handles empty symbols list', () {
      const query = 'EUR';
      final symbols = <SymbolModel>[];

      final result = searchProductUsecase(query, symbols);

      result.fold(
        (left) {
          fail('Expected a right result, but got a left: $left');
        },
        (right) {
          expect(right, isEmpty);
        },
      );
    });

    test('searchProducts returns an exception on error', () {
      const query = 'EUR';
      final symbols = [
        SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: ''),
      ];

      when(() => mockRepository.isProductInWatchList(any()))
          .thenThrow(Left(HiveDatabaseException('Some error')));

      final result = searchProductUsecase(query, symbols);
      result.fold(
        (left) {
          expect(left.toString(), contains('Error occurred during search:'));
        },
        (right) {
          fail('Expected a left result, but got a right: $right');
        },
      );
    });
  });
}
