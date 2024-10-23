import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exinity_assessment/data/models/hive/watchlist_model.dart';
import 'package:exinity_assessment/domain/usecase/watchlist_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watchlist_event.dart';
part 'watchlist_state.dart';
part 'watchlist_bloc.freezed.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  final WatchlistUseCase watchlistUseCase;
  WatchlistBloc({required this.watchlistUseCase})
      : super(const _WatchlistState()) {
    on<_GetWatchListProducts>(_getWatchListProducts);
  }

  FutureOr<void> _getWatchListProducts(
      _GetWatchListProducts event, Emitter<WatchlistState> emit) {
    watchlistUseCase.getWatchListProducts().fold((error) {
      emit(state.copyWith(
          watchlistProcessState: const WatchlistProcessState.error()));
    }, (data) {
      if (data.isEmpty) {
        return emit(state.copyWith(
            watchlistProcessState: const WatchlistProcessState.initial()));
      }
      return emit(state.copyWith(
          watchlistData: data,
          watchlistProcessState:
              const WatchlistProcessState.watchlistFetched()));
    });
  }
}
