import 'package:exinity_assessment/data/data_sources/sockets_data_source/web_socket_client_exception.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/data/models/sockets/symbol_pricing_model.dart';
import 'package:exinity_assessment/domain/repository/connect_products_hub_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetPricesUseCase {
  final ConnectProductsHubRepository connectProductsHubRepository;

  GetPricesUseCase({required this.connectProductsHubRepository});
  TaskEither<SocketException, Unit> connect() {
    return connectProductsHubRepository.connectProductsHub();
  }

  TaskEither<SocketException, Unit> subscripeToSymbols(
      List<SymbolModel> symbols) {
    return connectProductsHubRepository.subscripeToSymbols(symbols);
  }

  TaskEither<SocketException, Unit> disconnect() {
    return connectProductsHubRepository.disconnect();
  }

  TaskEither<SocketException, Unit> unsubscribeFromSymbols(
      List<SymbolModel> symbols) {
    return connectProductsHubRepository.unsubscribeFromSymbols(symbols);
  }

  TaskEither<SocketException, Stream<SymbolPricingModel>> getPrices() {
    return connectProductsHubRepository.getPrices();
  }
}
