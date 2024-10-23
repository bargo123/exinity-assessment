import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbol_pricing_model.freezed.dart';
part 'symbol_pricing_model.g.dart';

@freezed
class SymbolPricingModel with _$SymbolPricingModel {
  const factory SymbolPricingModel({
    required List<SymbolData> data,
    String? type,
  }) = _TradeResponse;

  factory SymbolPricingModel.fromJson(Map<String, dynamic> json) =>
      _$SymbolPricingModelFromJson(json);
}

@freezed
class SymbolData with _$SymbolData {
  const factory SymbolData({
    double? c,
    required double p,
    required String s,
    required int t,
    required int v,
  }) = _SymbolData;

  factory SymbolData.fromJson(Map<String, dynamic> json) =>
      _$SymbolDataFromJson(json);
}
