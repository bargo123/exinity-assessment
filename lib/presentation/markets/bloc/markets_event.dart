part of 'markets_bloc.dart';

@freezed
class MarketsEvent with _$MarketsEvent {
  const factory MarketsEvent.onGetMarketProducts() = _OnGetMarketProducts;
  const factory MarketsEvent.onGetProductsPrices() = _OnGetProductsPrices;
  const factory MarketsEvent.onSendPricesData(
          {required Map<String, SymbolPriceModel> symbolPrices}) =
      _OnSendPricesData;
  const factory MarketsEvent.onChangeGroup(int groupIndex) = _OnChangeGroup;
}
