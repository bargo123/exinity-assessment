import 'package:exinity_assessment/data/data_sources/hive_database/exceptions.dart';
import 'package:exinity_assessment/data/models/hive/watchlist_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:fpdart/fpdart.dart';
import 'package:exinity_assessment/domain/repository/watchlist_repository.dart';
import 'package:exinity_assessment/domain/usecase/watchlist_use_case.dart';

class MockWatchlistRepository extends Mock implements WatchlistRepository {}

void main() {
  late WatchlistUseCase watchlistUseCase;
  late MockWatchlistRepository mockRepository;

  setUpAll(() {
    diContainer
        .registerSingleton<WatchlistRepository>(MockWatchlistRepository());
    mockRepository =
        diContainer<WatchlistRepository>() as MockWatchlistRepository;
    watchlistUseCase = WatchlistUseCase(repository: mockRepository);
  });

  tearDown(() {
    diContainer.reset();
  });

  group('WatchlistUseCase', () {
    test('addProductToWatchlist success', () async {
      when(() => mockRepository.addProductToWatchList(any()))
          .thenAnswer((_) => TaskEither.right(unit));

      final result =
          await watchlistUseCase.addProductToWatchlist('EUR/USD').run();

      result.fold(
        (left) => fail('Expected a Right, but got a Left: $left'),
        (right) => expect(right, isA<Unit>()),
      );

      verify(() => mockRepository.addProductToWatchList('EUR/USD')).called(1);
    });

    test('addProductToWatchlist failure', () async {
      when(() => mockRepository.addProductToWatchList(any())).thenAnswer((_) =>
          TaskEither.left(HiveDatabaseException('Failed to add symbol')));

      final result =
          await watchlistUseCase.addProductToWatchlist('EUR/USD').run();

      result.fold(
        (left) => expect(left, isA<HiveDatabaseException>()),
        (right) => fail('Expected a Left, but got a Right: $right'),
      );

      verify(() => mockRepository.addProductToWatchList('EUR/USD')).called(1);
    });

    test('removeProductFromWatchlist success', () async {
      when(() => mockRepository.deleteProductFromWatchList(any()))
          .thenAnswer((_) => TaskEither.right(unit));

      final result =
          await watchlistUseCase.removeProductFromWatchlist('EUR/USD').run();

      result.fold(
        (left) => fail('Expected a Right, but got a Left: $left'),
        (right) => expect(right, isA<Unit>()),
      );

      verify(() => mockRepository.deleteProductFromWatchList('EUR/USD'))
          .called(1);
    });

    test('removeProductFromWatchlist failure', () async {
      when(() => mockRepository.deleteProductFromWatchList(any())).thenAnswer(
          (_) => TaskEither.left(
              HiveDatabaseException('Failed to remove symbol')));

      final result =
          await watchlistUseCase.removeProductFromWatchlist('EUR/USD').run();

      result.fold(
        (left) => expect(left, isA<HiveDatabaseException>()),
        (right) => fail('Expected a Left, but got a Right: $right'),
      );

      verify(() => mockRepository.deleteProductFromWatchList('EUR/USD'))
          .called(1);
    });

    test('getWatchListProducts success', () {
      final watchlist = [WatchlistModel(symbol: 'EUR/USD')];
      when(() => mockRepository.getWatchListProducts())
          .thenReturn(Right(watchlist));

      final result = watchlistUseCase.getWatchListProducts();

      result.fold(
        (left) => fail('Expected a Right, but got a Left: $left'),
        (products) => expect(products.length, watchlist.length),
      );

      verify(() => mockRepository.getWatchListProducts()).called(1);
    });

    test('getWatchListProducts failure', () {
      when(() => mockRepository.getWatchListProducts()).thenReturn(
          Left(HiveDatabaseException('Failed to retrieve products')));

      final result = watchlistUseCase.getWatchListProducts();

      result.fold(
        (left) => expect(left, isA<HiveDatabaseException>()),
        (right) => fail('Expected a Left, but got a Right: $right'),
      );

      verify(() => mockRepository.getWatchListProducts()).called(1);
    });
  });
}
