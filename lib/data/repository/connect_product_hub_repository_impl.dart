import 'dart:convert';

import 'package:exinity_assessment/core/constants/remote_constants.dart';
import 'package:exinity_assessment/core/constants/query_constants.dart';
import 'package:exinity_assessment/data/data_sources/sockets_data_source/web_socket_client_exception.dart';
import 'package:exinity_assessment/data/data_sources/sockets_data_source/socket_client_base.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/data/models/sockets/symbol_pricing_model.dart';
import 'package:exinity_assessment/domain/repository/connect_products_hub_repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';

class ConnectProductsHubRepositoryImpl extends ConnectProductsHubRepository {
  final SocketClientBase webSocketClient;

  ConnectProductsHubRepositoryImpl({required this.webSocketClient});

  @override
  TaskEither<SocketException, Unit> connectProductsHub() {
    final uri = _buildUriWithParams();
    return webSocketClient.connect(uri);
  }

  Uri _buildUriWithParams() {
    final uri = Uri.parse(RemoteConstants.baseUrlSocket);
    return Uri(
      scheme: uri.scheme,
      host: uri.host,
      queryParameters: {QueryConstants.token: dotenv.env['API_KEY']},
    );
  }

  @override
  TaskEither<SocketException, Stream<SymbolPricingModel>> getPrices() {
    return TaskEither<SocketException, Stream<SymbolPricingModel>>.tryCatch(
      () async {
        final receive = await webSocketClient.receive().run();
        return receive.fold(
          (leftError) {
            throw leftError;
          },
          (streamData) {
            return streamData
                .where((data) => jsonDecode(data)["data"] != null)
                .map((data) {
              final parsedData = SymbolPricingModel.fromJson(jsonDecode(data));
              return parsedData;
            });
          },
        );
      },
      (error, stackTrace) => SocketReceiveException(
        message: error.toString(),
        cause: error,
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<SocketException, Unit> subscripeToSymbols(
      List<SymbolModel> symbols) {
    return TaskEither<SocketException, Unit>.tryCatch(
      () async {
        for (var symbol in symbols) {
          final connection = await webSocketClient
              .send(jsonEncode({"type": "subscribe", "symbol": symbol.symbol}))
              .run();

          connection.fold(
            (l) => throw l,
            (r) => r,
          );
        }
        return unit;
      },
      (error, stackTrace) => SocketSendException(
          message: error.toString(), cause: error, stackTrace: stackTrace),
    );
  }

  @override
  TaskEither<SocketException, Unit> unsubscribeFromSymbols(
      List<SymbolModel> symbols) {
    return TaskEither<SocketException, Unit>.tryCatch(
      () async {
        for (var symbol in symbols) {
          final connection = await webSocketClient
              .send(
                  jsonEncode({"type": "unsubscribe", "symbol": symbol.symbol}))
              .run();

          connection.fold(
            (l) => throw SocketSendException(
                message: l.message, cause: l.cause, stackTrace: l.stackTrace),
            (r) => r,
          );
        }
        return unit;
      },
      (error, stackTrace) => SocketSendException(
          message: error.toString(), cause: error, stackTrace: stackTrace),
    );
  }

  @override
  TaskEither<SocketException, Unit> disconnect() {
    return webSocketClient.disconnect();
  }
}
