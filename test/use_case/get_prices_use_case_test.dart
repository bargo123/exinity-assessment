import 'package:exinity_assessment/data/data_sources/sockets_data_source/web_socket_client_exception.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:fpdart/fpdart.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/data/models/sockets/symbol_pricing_model.dart';
import 'package:exinity_assessment/domain/repository/connect_products_hub_repository.dart';
import 'package:exinity_assessment/domain/usecase/get_prices_use_case.dart';

class MockConnectProductsHubRepository extends Mock
    implements ConnectProductsHubRepository {}

void main() {
  late GetPricesUseCase getPricesUseCase;
  late MockConnectProductsHubRepository mockRepository;

  setUp(() {
    diContainer.registerSingleton<ConnectProductsHubRepository>(
        MockConnectProductsHubRepository());
    mockRepository = diContainer<ConnectProductsHubRepository>()
        as MockConnectProductsHubRepository;
    getPricesUseCase =
        GetPricesUseCase(connectProductsHubRepository: mockRepository);
  });

  tearDown(() {
    diContainer.reset();
  });

  group('GetPricesUseCase', () {
    test('connect success', () async {
      when(() => mockRepository.connectProductsHub())
          .thenReturn(TaskEither.right(unit));

      final result = await getPricesUseCase.connect().run();

      result.fold(
        (l) => fail('Should not fail'),
        (r) => expect(r, unit),
      );
      verify(() => mockRepository.connectProductsHub()).called(1);
    });

    test('connect failure', () async {
      when(() => mockRepository.connectProductsHub()).thenReturn(
          TaskEither.left(
              const ConnectionException(message: "Connection error")));

      final result = await getPricesUseCase.connect().run();

      result.fold(
        (l) => expect(l, isA<ConnectionException>()),
        (r) => fail('Should fail'),
      );
      verify(() => mockRepository.connectProductsHub()).called(1);
    });

    test('subscripeToSymbols success', () async {
      final symbols = [
        SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: '')
      ];
      when(() => mockRepository.subscripeToSymbols(symbols))
          .thenReturn(TaskEither.right(unit));

      final result = await getPricesUseCase.subscripeToSymbols(symbols).run();

      result.fold(
        (l) => fail('Should not fail'),
        (r) => expect(r, unit),
      );
      verify(() => mockRepository.subscripeToSymbols(symbols)).called(1);
    });

    test('subscripeToSymbols failure', () async {
      final symbols = [
        SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: '')
      ];
      when(() => mockRepository.subscripeToSymbols(symbols)).thenReturn(
          TaskEither.left(const SocketSendException(message: "Sending error")));

      final result = await getPricesUseCase.subscripeToSymbols(symbols).run();

      result.fold(
        (l) => expect(l, isA<SocketSendException>()),
        (r) => fail('Should fail'),
      );
      verify(() => mockRepository.subscripeToSymbols(symbols)).called(1);
    });

    test('disconnect', () async {
      when(() => mockRepository.disconnect())
          .thenReturn(TaskEither.right(unit));

      final result = await getPricesUseCase.disconnect().run();

      result.fold(
        (l) => fail('Should not fail'),
        (r) => expect(r, unit),
      );
      verify(() => mockRepository.disconnect()).called(1);
    });

    test('unsubscribeFromSymbols success', () async {
      final symbols = [
        SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: '')
      ];
      when(() => mockRepository.unsubscribeFromSymbols(symbols))
          .thenReturn(TaskEither.right(unit));

      final result =
          await getPricesUseCase.unsubscribeFromSymbols(symbols).run();

      result.fold(
        (l) => fail('Should not fail'),
        (r) => expect(r, unit),
      );
      verify(() => mockRepository.unsubscribeFromSymbols(symbols)).called(1);
    });

    test('unsubscribeFromSymbols failure', () async {
      final symbols = [
        SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: '')
      ];
      when(() => mockRepository.unsubscribeFromSymbols(symbols)).thenReturn(
          TaskEither.left(const SocketSendException(message: "Sending error")));

      final result =
          await getPricesUseCase.unsubscribeFromSymbols(symbols).run();

      result.fold(
        (l) => expect(l, isA<SocketSendException>()),
        (r) => fail('Should fail'),
      );
      verify(() => mockRepository.unsubscribeFromSymbols(symbols)).called(1);
    });

    test('getPrices success', () async {
      final stream = Stream.value(const SymbolPricingModel(data: []));
      when(() => mockRepository.getPrices())
          .thenReturn(TaskEither.right(stream));

      final result = await getPricesUseCase.getPrices().run();

      result.fold(
        (l) => fail('Should not fail'),
        (r) => expect(r, stream),
      );
      verify(() => mockRepository.getPrices()).called(1);
    });

    test('getPrices failure', () async {
      when(() => mockRepository.getPrices()).thenReturn(TaskEither.left(
          const SocketReceiveException(message: "error while receiving")));

      final result = await getPricesUseCase.getPrices().run();

      result.fold(
        (l) => expect(l, isA<SocketReceiveException>()),
        (r) => fail('Should fail'),
      );
      verify(() => mockRepository.getPrices()).called(1);
    });
  });
}
