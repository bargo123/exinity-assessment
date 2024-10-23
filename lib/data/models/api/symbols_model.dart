import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbols_model.freezed.dart';
part 'symbols_model.g.dart';

@freezed
class SymbolModel with _$SymbolModel {
  factory SymbolModel({
    required String description,
    required String displaySymbol,
    required String symbol,
  }) = _SymbolModel;

  factory SymbolModel.fromJson(Map<String, dynamic> json) =>
      _$SymbolModelFromJson(json);

  static List<SymbolModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((json) => SymbolModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
