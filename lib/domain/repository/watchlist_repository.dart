import 'package:exinity_assessment/data/data_sources/hive_database/exceptions.dart';
import 'package:exinity_assessment/data/models/hive/watchlist_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class WatchlistRepository {
  Either<HiveDatabaseException, bool> isProductInWatchList(String symbol);
  Either<HiveDatabaseException, List<WatchlistModel>> getWatchListProducts();
  TaskEither<HiveDatabaseException, Unit> deleteProductFromWatchList(
      String symbol);
  TaskEither<HiveDatabaseException, Unit> addProductToWatchList(String symbol);
}
