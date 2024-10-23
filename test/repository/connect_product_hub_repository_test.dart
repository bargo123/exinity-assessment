import 'dart:convert';

import 'package:exinity_assessment/data/data_sources/sockets_data_source/socket_client_base.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/data/data_sources/sockets_data_source/web_socket_client_exception.dart';
import 'package:exinity_assessment/data/models/sockets/symbol_pricing_model.dart';
import 'package:exinity_assessment/data/repository/connect_product_hub_repository_impl.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSocketClientBase extends Mock implements SocketClientBase {}

void main() {
  late ConnectProductsHubRepositoryImpl repository;
  late MockSocketClientBase mockWebSocketClient;

  setUp(() {
    diContainer.registerSingleton<SocketClientBase>(MockSocketClientBase());
    mockWebSocketClient =
        diContainer<SocketClientBase>() as MockSocketClientBase;
    repository =
        ConnectProductsHubRepositoryImpl(webSocketClient: mockWebSocketClient);
  });
  dotenv.testLoad(mergeWith: {
    'API_KEY': 'mocked_api_key', // Set mocked environment variable
  });
  tearDown(() {
    diContainer.reset();
  });

  group('ConnectProductsHubRepositoryImpl', () {
    test('connectProductsHub calls webSocketClient.connect with correct URI',
        () async {
      when(() => mockWebSocketClient.connect(Uri(
            scheme: "ws",
            host: "ws.finnhub.io",
            queryParameters: {"token": dotenv.env['API_KEY']},
          ))).thenReturn(TaskEither.right(unit));

      final result = await repository.connectProductsHub().run();

      expect(result.isRight(), isTrue);
      verify(() => mockWebSocketClient.connect(Uri(
            scheme: "ws",
            host: "ws.finnhub.io",
            queryParameters: {"token": dotenv.env['API_KEY']},
          ))).called(1);
    });

    test('connectProductsHub calls webSocketClient.connect with correct URI',
        () async {
      when(() => mockWebSocketClient.connect(Uri(
            scheme: "ws",
            host: "ws.finnhub.io",
            queryParameters: {"token": dotenv.env['API_KEY']},
          ))).thenReturn(TaskEither.right(unit));

      final result = await repository.connectProductsHub().run();

      expect(result.isRight(), isTrue);
      verify(() => mockWebSocketClient.connect(Uri(
            scheme: "ws",
            host: "ws.finnhub.io",
            queryParameters: {"token": dotenv.env['API_KEY']},
          ))).called(1);
    });

    test('connectProductsHub returns error when webSocketClient.connect fails',
        () async {
      const error = ConnectionException(message: 'Connection error');
      when(() => mockWebSocketClient.connect(Uri(
            scheme: "ws",
            host: "ws.finnhub.io",
            queryParameters: {"token": dotenv.env['API_KEY']},
          ))).thenReturn(TaskEither.left(error));
      final result = await repository.connectProductsHub().run();
      expect(result.isLeft(), isTrue);
      verify(() => mockWebSocketClient.connect(Uri(
            scheme: "ws",
            host: "ws.finnhub.io",
            queryParameters: {"token": dotenv.env['API_KEY']},
          ))).called(1);
    });
  });

  test('getPrices returns a stream of SymbolPricingModel on success', () async {
    // Prepare mock data
    final jsonData = jsonEncode({
      "data": [
        {
          "s": "EUR/USD",
          "p": 1.2,
          "t": 1624204800000,
          "v": 1000000,
        }
      ]
    });

    final mockStream = Stream.value(jsonData);

    when(() => mockWebSocketClient.receive())
        .thenReturn(TaskEither.right(mockStream));

    final result = await repository.getPrices().run();

    expect(result.isRight(), isTrue);

    final pricesStream = result.getOrElse((_) => const Stream.empty());

    final emittedData = await pricesStream.first; // Collect stream data

    expect(emittedData, isA<SymbolPricingModel>());
    expect(emittedData.data.first.s, "EUR/USD");
    expect(emittedData.data.first.p, 1.2);

    verify(() => mockWebSocketClient.receive()).called(1);
  });

  test('getPrices returns an error when the receive fails', () async {
    const error = SocketReceiveException(message: 'Receive error');

    when(() => mockWebSocketClient.receive())
        .thenReturn(TaskEither.left(error));

    final result = await repository.getPrices().run();

    result.fold(
      (leftValue) {
        expect(leftValue, isA<SocketReceiveException>());
        expect(leftValue.toString(), "Receive error");
      },
      (rightValue) {
        fail('Expected an error, but got a right value: $rightValue');
      },
    );

    verify(() => mockWebSocketClient.receive()).called(1);
  });

  test('subscripeToSymbols subscribes to symbols successfully', () async {
    final symbols = [
      SymbolModel(symbol: 'EUR/USD', description: '', displaySymbol: ''),
      SymbolModel(symbol: 'GBP/USD', description: '', displaySymbol: ''),
    ];

    when(() => mockWebSocketClient.send(any()))
        .thenReturn(TaskEither.right(unit));

    final result = await repository.subscripeToSymbols(symbols).run();

    expect(result.isRight(), isTrue);
    verify(
      () => mockWebSocketClient.send(any()),
    ).called(2);
  });

  test('subscripeToSymbols returns error when send fails', () async {
    final symbols = [
      SymbolModel(symbol: 'EUR/USD', description: '', displaySymbol: '')
    ];

    const error = SocketSendException(message: 'Send error');
    when(() => mockWebSocketClient.send(any()))
        .thenReturn(TaskEither.left(error));

    final result = await repository.subscripeToSymbols(symbols).run();

    result.fold(
      (leftValue) {
        expect(leftValue, isA<SocketSendException>());
        expect(leftValue.toString(), 'Send error');
      },
      (rightValue) {
        fail('Expected an error, but got a right value: $rightValue');
      },
    );

    verify(
      () => mockWebSocketClient.send(any()),
    ).called(1);
  });

  test('unsubscripeFromSymbols returns error when send fails', () async {
    final symbols = [
      SymbolModel(symbol: 'EUR/USD', description: '', displaySymbol: '')
    ];

    const error = SocketSendException(message: 'Send error');
    when(() => mockWebSocketClient.send(any()))
        .thenReturn(TaskEither.left(error));

    final result = await repository.unsubscribeFromSymbols(symbols).run();

    result.fold(
      (leftValue) {
        expect(leftValue, isA<SocketSendException>());
        expect(leftValue.toString(), 'Send error');
      },
      (rightValue) {
        fail('Expected an error, but got a right value: $rightValue');
      },
    );

    verify(
      () => mockWebSocketClient.send(any()),
    ).called(1);
  });

  test('unsubscripeFromSymbols subscribes to symbols successfully', () async {
    final symbols = [
      SymbolModel(symbol: 'EUR/USD', description: '', displaySymbol: ''),
      SymbolModel(symbol: 'GBP/USD', description: '', displaySymbol: ''),
    ];

    when(() => mockWebSocketClient.send(any()))
        .thenReturn(TaskEither.right(unit));

    final result = await repository.unsubscribeFromSymbols(symbols).run();

    expect(result.isRight(), isTrue);
    verify(
      () => mockWebSocketClient.send(any()),
    ).called(2);
  });
}
