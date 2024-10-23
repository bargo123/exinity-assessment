import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/domain/models/watchlist_model.dart';
import 'package:exinity_assessment/domain/usecase/search_product_usecase.dart';
import 'package:exinity_assessment/domain/usecase/watchlist_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchProductUsecase searchProductUsecase;
  final WatchlistUseCase watchlistUseCase;
  final List<SymbolModel> symbols;
  SearchBloc({
    required this.symbols,
    required this.searchProductUsecase,
    required this.watchlistUseCase,
  }) : super(const SearchState()) {
    on<_OnDoSearchProudcts>(_onDoSearchProudcts);
    on<_AddOrRemoveProductFromWatchlist>(_addProductToWatchlist);
  }
  FutureOr<void> _onDoSearchProudcts(
      _OnDoSearchProudcts event, Emitter<SearchState> emit) async {
    if (event.query.isEmpty) {
      return emit(state.copyWith(
          searchProcessState: const SearchProcessState.initial()));
    }
    var search = searchProductUsecase(event.query, symbols);
    search.fold(
      (l) {
        return emit(state.copyWith(
            searchProcessState: const SearchProcessState.error(),
            query: event.query));
      },
      (r) {
        if (r.isEmpty) {
          return emit(state.copyWith(
              searchProcessState: const SearchProcessState.searchEmpty(),
              query: event.query));
        }
        return emit(state.copyWith(
            searchProcessState: const SearchProcessState.searchSuccess(),
            query: event.query,
            symbol: r));
      },
    );
  }

  FutureOr<void> _addProductToWatchlist(
      _AddOrRemoveProductFromWatchlist event, Emitter<SearchState> emit) async {
    var productAdd = !event.isAdd
        ? await watchlistUseCase.addProductToWatchlist(event.product).run()
        : await watchlistUseCase
            .removeProductFromWatchlist(event.product)
            .run();

    productAdd.fold(
      (l) {
        return emit(state.copyWith(
            searchProcessState: const SearchProcessState.error()));
      },
      (r) {
        add(SearchEvent.onDoSearchProudcts(state.query));
      },
    );
  }
}
