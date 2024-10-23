import 'package:exinity_assessment/data/models/hive/watchlist_model.dart';
import 'package:exinity_assessment/domain/repository/watchlist_repository.dart';
import 'package:fpdart/fpdart.dart';

class WatchlistUseCase {
  final WatchlistRepository repository;

  WatchlistUseCase({required this.repository});

  TaskEither<Exception, Unit> addProductToWatchlist(String symbol) {
    return repository.addProductToWatchList((symbol));
  }

  TaskEither<Exception, Unit> removeProductFromWatchlist(String symbol) {
    return repository.deleteProductFromWatchList(symbol);
  }

  Either<Exception, List<WatchlistModel?>> getWatchListProducts() {
    return repository.getWatchListProducts();
  }
}
