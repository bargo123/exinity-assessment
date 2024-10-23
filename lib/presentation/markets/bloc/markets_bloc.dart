import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/domain/usecase/get_prices_use_case.dart';
import 'package:exinity_assessment/domain/usecase/get_symbols_use_case.dart';
import 'package:exinity_assessment/presentation/model/symbol_price_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'markets_event.dart';
part 'markets_state.dart';
part 'markets_bloc.freezed.dart';

class MarketsBloc extends Bloc<MarketsEvent, MarketsState> {
  final GetSymbolsUseCase getSymbolsUseCase;
  final GetPricesUseCase getPricesUseCase;

  MarketsBloc({
    required this.getSymbolsUseCase,
    required this.getPricesUseCase,
  }) : super(const MarketsState()) {
    on<_OnGetMarketProducts>(_onGetMarketProducts);
    on<_OnGetProductsPrices>(_onGetProductsPrices);
    on<_OnSendPricesData>(_onSendPricesData);
    on<_OnChangeGroup>(_onChangeGroup);
  }

  StreamSubscription? _pricesSubscription;

  FutureOr<void> _onGetMarketProducts(
      _OnGetMarketProducts event, Emitter<MarketsState> emit) async {
    final result = await getSymbolsUseCase().run();
    await result.fold(
      (exception) {
        emit(state.copyWith(
          marketProcessState: const MarketProcessState.error(),
        ));
      },
      (symbols) async {
        print(symbols.first.displaySymbol);
        emit(state.copyWith(
          marketProcessState: const MarketProcessState.success(),
          allSymbols: symbols,
          displayedSymbols: _getSymbolsForGroup(symbols, 0),
          currentGroup: 0,
        ));

        var connect = await getPricesUseCase.connect().run();
        await connect.fold(
          (error) {
            emit(state.copyWith(
              marketProcessState: const MarketProcessState.error(),
            ));
          },
          (_) async {
            var subscribe = await getPricesUseCase
                .subscripeToSymbols(state.displayedSymbols)
                .run();
            subscribe.fold(
              (error) {
                emit(state.copyWith(
                  marketProcessState: const MarketProcessState.error(),
                ));
              },
              (_) {
                add(const _OnGetProductsPrices());
              },
            );
          },
        );
      },
    );
  }

  FutureOr<void> _onChangeGroup(
      _OnChangeGroup event, Emitter<MarketsState> emit) async {
    final newDisplayedSymbols =
        _getSymbolsForGroup(state.allSymbols, event.groupIndex);

    final unsubscribeResult = await getPricesUseCase
        .unsubscribeFromSymbols(state.displayedSymbols)
        .run();

    await unsubscribeResult.fold(
      (error) {
        emit(state.copyWith(
          marketProcessState: const MarketProcessState.error(),
        ));
      },
      (_) async {
        final subscribeResult = await getPricesUseCase
            .subscripeToSymbols(newDisplayedSymbols)
            .run();

        subscribeResult.fold(
          (error) {
            emit(state.copyWith(
              marketProcessState: const MarketProcessState.error(),
            ));
          },
          (_) {
            emit(state.copyWith(
              displayedSymbols: newDisplayedSymbols,
              currentGroup: event.groupIndex,
            ));
          },
        );
      },
    );
  }

  List<SymbolModel> _getSymbolsForGroup(
      List<SymbolModel> allSymbols, int groupIndex) {
    final start = groupIndex * 10;
    if (start >= allSymbols.length) {
      return [];
    }
    final end = start + 10;
    return allSymbols.sublist(
      start,
      end > allSymbols.length ? allSymbols.length : end,
    );
  }

  FutureOr<void> _onGetProductsPrices(
      _OnGetProductsPrices event, Emitter<MarketsState> emit) async {
    final result = await getPricesUseCase.getPrices().run();
    result.fold(
      (exception) {
        emit(state.copyWith(
          marketProcessState: const MarketProcessState.error(),
        ));
      },
      (stream) {
        _pricesSubscription = stream.listen((event) {
          final Map<String, SymbolPriceModel> newValue =
              Map.from(state.symbolPrices);
          for (var symbolData in event.data) {
            final oldPrice = state.symbolPrices[symbolData.s]?.price ?? 0.0;
            final newPrice = symbolData.p;
            final isLoss = newPrice < oldPrice;
            newValue[symbolData.s] = SymbolPriceModel(
              symbol: symbolData.s,
              price: newPrice,
              isLoss: isLoss,
            );
            add(_OnSendPricesData(symbolPrices: newValue));
          }
        });
      },
    );
  }

  FutureOr<void> _onSendPricesData(
      _OnSendPricesData event, Emitter<MarketsState> emit) {
    emit(state.copyWith(symbolPrices: event.symbolPrices));
  }

  @override
  Future<void> close() async {
    await _pricesSubscription?.cancel();
    var disconnect = await getPricesUseCase.disconnect().run();
    disconnect.fold((exception) {
      debugPrint("Error disconnecting: $exception");
    }, (result) {
      debugPrint("Disconnected");
    });
    super.close();
  }
}
