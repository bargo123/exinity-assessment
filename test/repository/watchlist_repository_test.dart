import 'package:exinity_assessment/data/data_sources/hive_database/exceptions.dart';
import 'package:exinity_assessment/data/data_sources/hive_database/hive_database_base.dart';
import 'package:exinity_assessment/data/models/hive/watchlist_model.dart';
import 'package:exinity_assessment/data/repository/watchlist_repository_impl.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockHiveDatabaseBase extends Mock implements HiveDatabaseBase {}

void main() {
  late WatchlistRepositoryImpl repository;
  late MockHiveDatabaseBase mockHiveDatabase;

  setUp(() {
    diContainer.registerSingleton<HiveDatabaseBase>(MockHiveDatabaseBase());
    mockHiveDatabase = diContainer<HiveDatabaseBase>() as MockHiveDatabaseBase;
    repository = WatchlistRepositoryImpl(hiveDatabaseBase: mockHiveDatabase);
  });
  tearDown(() {
    diContainer.reset();
  });

  group('WatchlistRepositoryImpl', () {
    test('isProductInWatchList returns true when product exists', () {
      // Arrange
      final watchlist = [WatchlistModel(symbol: 'EUR/USD')];
      when(() => mockHiveDatabase.getBoxValues<WatchlistModel>("watchlist"))
          .thenReturn(Right(watchlist));

      // Act
      final result = repository.isProductInWatchList('EUR/USD');

      // Assert
      expect(result.isRight(), isTrue);
      expect(result.fold((l) => false, (r) => r), isTrue);
    });

    test('isProductInWatchList returns false when product does not exist', () {
      // Arrange
      final watchlist = [WatchlistModel(symbol: 'GBP/USD')];
      when(() => mockHiveDatabase.getBoxValues<WatchlistModel>("watchlist"))
          .thenReturn(Right(watchlist));

      // Act
      final result = repository.isProductInWatchList('EUR/USD');

      // Assert
      expect(result.isRight(), isTrue);
      expect(result.fold((l) => false, (r) => r), isFalse);
    });

    test('isProductInWatchList handles exceptions', () {
      // Arrange
      when(() => mockHiveDatabase.getBoxValues<WatchlistModel>("watchlist"))
          .thenReturn(Left(HiveDatabaseException('Database error')));

      // Act
      final result = repository.isProductInWatchList('EUR/USD');

      // Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold((e) => e.toString(), (r) => ''),
          contains('Database error'));
    });

    test('getWatchListProducts returns watchlist', () {
      // Arrange
      final watchlist = [WatchlistModel(symbol: 'EUR/USD')];
      when(() => mockHiveDatabase.getBoxValues<WatchlistModel>("watchlist"))
          .thenReturn(Right(watchlist));

      final result = repository.getWatchListProducts();

      expect(result.isRight(), isTrue);
      expect(result.fold((l) => [], (r) => r), equals(watchlist));
    });

    test('getWatchListProducts handles exceptions', () {
      when(() => mockHiveDatabase.getBoxValues<WatchlistModel>("watchlist"))
          .thenReturn(Left(HiveDatabaseException('Database error')));

      final result = repository.getWatchListProducts();

      expect(result.isLeft(), isTrue);
      expect(result.fold((e) => e.toString(), (r) => ''),
          contains('Database error'));
    });

    test('deleteProductFromWatchList success', () async {
      // Arrange
      when(() => mockHiveDatabase.getBoxValues<WatchlistModel>("watchlist"))
          .thenReturn(Right([WatchlistModel(symbol: 'EUR/USD')]));
      when(() => mockHiveDatabase.deleteAtIndex<WatchlistModel>(
          "watchlist", any())).thenReturn(TaskEither.right(unit));

      // Act
      final result =
          await repository.deleteProductFromWatchList('EUR/USD').run();

      // Assert
      expect(result.isRight(), isTrue);
      verify(() =>
              mockHiveDatabase.deleteAtIndex<WatchlistModel>("watchlist", 0))
          .called(1);
    });

    test('deleteProductFromWatchList product not found', () async {
      // Arrange
      when(() => mockHiveDatabase.getBoxValues<WatchlistModel>("watchlist"))
          .thenReturn(Right([]));

      // Act
      final result =
          await repository.deleteProductFromWatchList('EUR/USD').run();

      // Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold((e) => e.toString(), (r) => ''),
          contains('Product not found in watchlist'));
    });

    test('deleteProductFromWatchList handles exceptions', () async {
      // Arrange
      when(() => mockHiveDatabase.getBoxValues<WatchlistModel>("watchlist"))
          .thenReturn(Right([WatchlistModel(symbol: 'EUR/USD')]));
      when(() =>
          mockHiveDatabase.deleteAtIndex<WatchlistModel>(
              "watchlist", any())).thenReturn(
          TaskEither.left(HiveDatabaseException('Failed to delete symbol')));

      // Act
      final result =
          await repository.deleteProductFromWatchList('EUR/USD').run();

      // Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold((e) => e.toString(), (r) => ''),
          contains('Failed to delete symbol'));
    });
  });
}
