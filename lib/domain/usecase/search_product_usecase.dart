import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/domain/models/watchlist_model.dart';
import 'package:exinity_assessment/domain/repository/watchlist_repository.dart';
import 'package:fpdart/fpdart.dart';

class SearchProductUsecase {
  final WatchlistRepository repository;

  SearchProductUsecase({required this.repository});

  Either<Exception, List<SymbolWatchlistModel>> call(
      String query, List<SymbolModel> symbols) {
    return Either.tryCatch(() {
      final result = _filterAndMapSymbols(query, symbols);
      return result;
    }, (e, _) => Exception('Error occurred during search: $e'));
  }

  List<SymbolWatchlistModel> _filterAndMapSymbols(
      String query, List<SymbolModel> symbols) {
    final filteredSymbols = symbols.where((symbol) {
      return symbol.displaySymbol.toLowerCase().contains(query.toLowerCase());
    }).toList();
    return filteredSymbols.map((symbol) {
      final isInWatchlist = repository
          .isProductInWatchList(symbol.displaySymbol)
          .getOrElse((_) => false);
      return SymbolWatchlistModel(
          symbolName: symbol.displaySymbol, isWatchlist: isInWatchlist);
    }).toList();
  }
}
