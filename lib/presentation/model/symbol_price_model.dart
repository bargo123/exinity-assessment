class SymbolPriceModel {
  final String symbol;
  final double price;
  final bool isLoss;

  SymbolPriceModel({
    required this.symbol,
    required this.price,
    required this.isLoss,
  });
}
