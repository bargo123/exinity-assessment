import 'package:exinity_assessment/data/data_sources/sockets_data_source/web_socket_client_exception.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/data/models/sockets/symbol_pricing_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class ConnectProductsHubRepository {
  TaskEither<SocketException, Unit> connectProductsHub();
  TaskEither<SocketException, Unit> subscripeToSymbols(
      List<SymbolModel> symbols);
  TaskEither<SocketException, Unit> unsubscribeFromSymbols(
      List<SymbolModel> symbols);
  TaskEither<SocketException, Unit> disconnect();
  TaskEither<SocketException, Stream<SymbolPricingModel>> getPrices();
}
