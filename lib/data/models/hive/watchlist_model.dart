import 'package:hive_flutter/hive_flutter.dart';
part 'watchlist_model.g.dart';

@HiveType(typeId: 0)
class WatchlistModel {
  @HiveField(0)
  final String symbol;

  WatchlistModel({
    required this.symbol,
  });
}
