import 'package:exinity_assessment/core/constants/hive_constants.dart';
import 'package:exinity_assessment/data/data_sources/hive_database/exceptions.dart';
import 'package:exinity_assessment/data/data_sources/hive_database/hive_database_base.dart';
import 'package:exinity_assessment/data/models/hive/watchlist_model.dart';
import 'package:exinity_assessment/domain/repository/watchlist_repository.dart';
import 'package:fpdart/fpdart.dart';

class WatchlistRepositoryImpl extends WatchlistRepository {
  final HiveDatabaseBase hiveDatabaseBase;

  WatchlistRepositoryImpl({required this.hiveDatabaseBase});

  @override
  Either<HiveDatabaseException, bool> isProductInWatchList(String product) {
    return hiveDatabaseBase
        .getBoxValues<WatchlistModel>(HiveConstants.watchlistBoxName)
        .flatMap((response) {
      return Either.tryCatch(() {
        return response.any((item) => item.symbol == product);
      }, (e, s) {
        return HiveDatabaseException(e.toString());
      });
    });
  }

  @override
  Either<HiveDatabaseException, List<WatchlistModel>> getWatchListProducts() {
    return hiveDatabaseBase.getBoxValues<WatchlistModel>(
      HiveConstants.watchlistBoxName,
    );
  }

  @override
  TaskEither<HiveDatabaseException, Unit> addProductToWatchList(String symbol) {
    return hiveDatabaseBase.setValue<WatchlistModel>(
      HiveConstants.watchlistBoxName,
      WatchlistModel(symbol: symbol),
    );
  }

  @override
  TaskEither<HiveDatabaseException, Unit> deleteProductFromWatchList(
      String symbol) {
    final index = _findProductIndex(symbol);
    if (index == -1) {
      return TaskEither.left(
          HiveDatabaseException('Product not found in watchlist'));
    }
    return hiveDatabaseBase.deleteAtIndex<WatchlistModel>(
      HiveConstants.watchlistBoxName,
      index,
    );
  }

  int _findProductIndex(String product) {
    final boxEither = hiveDatabaseBase
        .getBoxValues<WatchlistModel>(HiveConstants.watchlistBoxName);

    final index = boxEither.fold(
      (error) {
        return -1;
      },
      (values) {
        final foundIndex = values.indexWhere((item) => item.symbol == product);
        return foundIndex;
      },
    );

    return index;
  }
}
