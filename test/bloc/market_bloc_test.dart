import 'package:bloc_test/bloc_test.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/http_api_exception.dart';
import 'package:exinity_assessment/data/data_sources/sockets_data_source/web_socket_client_exception.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/data/models/sockets/symbol_pricing_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/domain/usecase/get_prices_use_case.dart';
import 'package:exinity_assessment/domain/usecase/get_symbols_use_case.dart';
import 'package:exinity_assessment/presentation/markets/bloc/markets_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:fpdart/fpdart.dart';

class MockGetSymbolsUseCase extends Mock implements GetSymbolsUseCase {}

class MockGetPricesUseCase extends Mock implements GetPricesUseCase {}

void main() {
  late MarketsBloc marketsBloc;
  late MockGetSymbolsUseCase mockGetSymbolsUseCase;
  late MockGetPricesUseCase mockGetPricesUseCase;

  setUp(() {
    diContainer.registerSingleton<GetSymbolsUseCase>(MockGetSymbolsUseCase());
    diContainer.registerSingleton<GetPricesUseCase>(MockGetPricesUseCase());
    mockGetSymbolsUseCase =
        diContainer<GetSymbolsUseCase>() as MockGetSymbolsUseCase;
    mockGetPricesUseCase =
        diContainer<GetPricesUseCase>() as MockGetPricesUseCase;
    marketsBloc = MarketsBloc(
      getSymbolsUseCase: mockGetSymbolsUseCase,
      getPricesUseCase: mockGetPricesUseCase,
    );

    when(() => mockGetPricesUseCase.disconnect())
        .thenAnswer((_) => TaskEither.right(unit));
  });
  tearDown(() {
    diContainer.reset();
  });
  group('MarketsBloc', () {
    test('initial state is MarketsState', () {
      expect(marketsBloc.state, const MarketsState());
    });

    blocTest<MarketsBloc, MarketsState>(
      'emits [success] when _OnGetMarketProducts is successful',
      build: () {
        when(() => mockGetSymbolsUseCase()).thenReturn(
          TaskEither.right([
            SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: ''),
            SymbolModel(displaySymbol: 'CHF/JPY', description: '', symbol: ''),
          ]),
        );
        when(() => mockGetPricesUseCase.getPrices())
            .thenReturn(TaskEither.right(const Stream.empty()));
        when(() => mockGetPricesUseCase.connect())
            .thenReturn(TaskEither.right(unit));
        when(() => mockGetPricesUseCase.subscripeToSymbols(any()))
            .thenReturn(TaskEither.right(unit));

        return marketsBloc;
      },
      act: (bloc) => bloc.add(const MarketsEvent.onGetMarketProducts()),
      expect: () => [
        isA<MarketsState>()
            .having((s) => s.marketProcessState, 'marketProcessState',
                const MarketProcessState.success())
            .having(
                (s) => s.displayedSymbols.length, 'displayedSymbols.length', 2),
      ],
    );

    blocTest<MarketsBloc, MarketsState>(
      'emits [error] when _OnGetMarketProducts fails',
      build: () {
        when(() => mockGetSymbolsUseCase()).thenReturn(TaskEither.left(
            const HttpApiException(message: 'Failed to fetch symbols')));
        when(() => mockGetPricesUseCase.getPrices())
            .thenReturn(TaskEither.right(const Stream.empty()));
        when(() => mockGetPricesUseCase.connect())
            .thenReturn(TaskEither.right(unit));
        when(() => mockGetPricesUseCase.subscripeToSymbols(any()))
            .thenReturn(TaskEither.right(unit));
        return marketsBloc;
      },
      act: (bloc) => bloc.add(const MarketsEvent.onGetMarketProducts()),
      expect: () => [
        isA<MarketsState>().having(
          (s) => s.marketProcessState,
          'marketProcessState',
          const MarketProcessState.error(),
        ),
      ],
    );

    blocTest<MarketsBloc, MarketsState>(
      'emits [success] when prices stream is received and processed correctly',
      build: () {
        final mockStream = Stream.fromIterable([
          const SymbolPricingModel(data: [
            SymbolData(p: 1.1, s: "EUR/USD", t: 1, v: 1)
          ]), // First price
        ]);
        when(() => mockGetPricesUseCase.getPrices())
            .thenReturn(TaskEither.right(mockStream));

        return marketsBloc;
      },
      act: (bloc) => bloc.add(const MarketsEvent.onGetProductsPrices()),
      expect: () => [
        isA<MarketsState>().having(
          (s) => s.symbolPrices['EUR/USD']?.price,
          'price',
          1.1,
        ),
      ],
    );

    blocTest<MarketsBloc, MarketsState>(
      'emits [error] when price connection fails',
      build: () {
        when(() => mockGetSymbolsUseCase()).thenReturn(
          TaskEither.right([
            SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: ''),
          ]),
        );
        when(() => mockGetPricesUseCase.connect()).thenReturn(TaskEither.left(
            const ConnectionException(message: 'Somthing went wrong')));
        return marketsBloc;
      },
      act: (bloc) => bloc.add(const MarketsEvent.onGetMarketProducts()),
      expect: () => [
        isA<MarketsState>().having(
          (s) => s.marketProcessState,
          'marketProcessState',
          const MarketProcessState.success(),
        ),
        isA<MarketsState>().having(
          (s) => s.marketProcessState,
          'marketProcessState',
          const MarketProcessState.error(),
        ),
      ],
    );

    blocTest<MarketsBloc, MarketsState>(
      'emits [success] when changing group of symbols',
      build: () {
        when(() => mockGetPricesUseCase.unsubscribeFromSymbols(any()))
            .thenReturn(TaskEither.right(unit));
        when(() => mockGetPricesUseCase.subscripeToSymbols(any()))
            .thenReturn(TaskEither.right(unit));
        marketsBloc.emit(marketsBloc.state.copyWith(
          allSymbols: [
            SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: ''),
            SymbolModel(displaySymbol: 'CHF/JPY', description: '', symbol: ''),
          ],
        ));
        return marketsBloc;
      },
      act: (bloc) => bloc.add(const MarketsEvent.onChangeGroup(0)),
      expect: () => [
        isA<MarketsState>()
            .having((s) => s.displayedSymbols, 'displayedSymbols', isNotEmpty)
            .having((s) => s.currentGroup, 'currentGroup', 0),
      ],
    );
    blocTest<MarketsBloc, MarketsState>(
      'emits [empty] when group is not available',
      build: () {
        when(() => mockGetPricesUseCase.unsubscribeFromSymbols(any()))
            .thenReturn(TaskEither.right(unit));
        when(() => mockGetPricesUseCase.subscripeToSymbols(any()))
            .thenReturn(TaskEither.right(unit));
        marketsBloc.emit(marketsBloc.state.copyWith(
          allSymbols: [
            SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: ''),
            SymbolModel(displaySymbol: 'CHF/JPY', description: '', symbol: ''),
          ],
        ));
        return marketsBloc;
      },
      act: (bloc) => bloc.add(const MarketsEvent.onChangeGroup(1)),
      expect: () => [
        isA<MarketsState>()
            .having((s) => s.displayedSymbols, 'displayedSymbols', []).having(
                (s) => s.currentGroup, 'currentGroup', 1),
      ],
    );
  });
}
