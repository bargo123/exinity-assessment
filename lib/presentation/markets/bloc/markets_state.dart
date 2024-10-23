part of 'markets_bloc.dart';

@freezed
class MarketsState with _$MarketsState {
  const factory MarketsState(
      {@Default(MarketProcessState.loading())
      MarketProcessState marketProcessState,
      @Default({}) Map<String, SymbolPriceModel> symbolPrices,
      @Default(0) int currentGroup,
      @Default([]) List<SymbolModel> displayedSymbols,
      @Default([]) List<SymbolModel> allSymbols}) = _MarketsState;
}

@freezed
sealed class MarketProcessState with _$MarketProcessState {
  const factory MarketProcessState.loading() = _MarketProcessStateLoading;
  const factory MarketProcessState.success() = _MarketProcessStateSuccess;
  const factory MarketProcessState.error() = _MarketProcessStateError;
}
