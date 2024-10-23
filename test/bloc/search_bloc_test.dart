import 'package:bloc_test/bloc_test.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/domain/models/watchlist_model.dart';
import 'package:exinity_assessment/domain/usecase/search_product_usecase.dart';
import 'package:exinity_assessment/domain/usecase/watchlist_use_case.dart';
import 'package:exinity_assessment/presentation/search/bloc/search_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockSearchProductUsecase extends Mock implements SearchProductUsecase {}

class MockWatchlistUseCase extends Mock implements WatchlistUseCase {}

void main() {
  late SearchBloc searchBloc;
  late MockSearchProductUsecase searchProductUsecase;
  late MockWatchlistUseCase watchlistUseCase;

  setUp(() {
    diContainer
        .registerSingleton<SearchProductUsecase>(MockSearchProductUsecase());
    diContainer.registerSingleton<WatchlistUseCase>(MockWatchlistUseCase());
    watchlistUseCase = diContainer<WatchlistUseCase>() as MockWatchlistUseCase;
    searchProductUsecase =
        diContainer<SearchProductUsecase>() as MockSearchProductUsecase;
    final symbols = [
      SymbolModel(displaySymbol: 'EUR/USD', description: '', symbol: ''),
      SymbolModel(displaySymbol: 'CHF/JPY', description: '', symbol: ''),
    ];

    searchBloc = SearchBloc(
      symbols: symbols,
      searchProductUsecase: searchProductUsecase,
      watchlistUseCase: watchlistUseCase,
    );
  });

  tearDown(() {
    diContainer.reset();
    searchBloc.close();
  });

  group('SearchBloc', () {
    test('initial state is SearchProcessState.initial', () {
      expect(searchBloc.state.searchProcessState,
          const SearchProcessState.initial());
    });
    blocTest<SearchBloc, SearchState>(
      'emits [initial] when query is empty',
      build: () {
        when(() => searchProductUsecase(any(), any()))
            .thenReturn(const Right([]));

        return searchBloc;
      },
      act: (bloc) => bloc.add(const SearchEvent.onDoSearchProudcts('')),
      expect: () => [
        isA<SearchState>().having(
          (s) => s.searchProcessState,
          'searchProcessState',
          const SearchProcessState.initial(),
        )
      ],
    );
    blocTest<SearchBloc, SearchState>(
      'emits [searchLoading, searchSuccess] when search is successful',
      build: () {
        when(() => searchProductUsecase(any(), any())).thenReturn(Right([
          SymbolWatchlistModel(symbolName: 'EUR/USD', isWatchlist: false),
        ]));

        return searchBloc;
      },
      act: (bloc) => bloc.add(const SearchEvent.onDoSearchProudcts('EUR')),
      expect: () => [
        isA<SearchState>()
            .having(
          (s) => s.searchProcessState,
          'searchProcessState',
          const SearchProcessState.searchSuccess(),
        )
            .having(
          (s) => s.symbol,
          'symbol',
          [isA<SymbolWatchlistModel>()],
        ).having(
          (s) => s.query,
          'query',
          'EUR',
        ),
      ],
    );
    blocTest<SearchBloc, SearchState>(
      'emits [searchEmpty] when search is empty',
      build: () {
        when(() => searchProductUsecase(any(), any()))
            .thenReturn(const Right([]));

        return searchBloc;
      },
      act: (bloc) => bloc.add(const SearchEvent.onDoSearchProudcts('EUR/USD')),
      expect: () => [
        isA<SearchState>().having(
          (s) => s.searchProcessState,
          'searchProcessState',
          const SearchProcessState.searchEmpty(),
        )
      ],
    );
    blocTest<SearchBloc, SearchState>(
      'emits [error] when there is an exception',
      build: () {
        when(() => searchProductUsecase(any(), any()))
            .thenReturn(Left(Exception('Error occurred during search')));

        return searchBloc;
      },
      act: (bloc) => bloc.add(const SearchEvent.onDoSearchProudcts('EUR/USD')),
      expect: () => [
        isA<SearchState>().having(
          (s) => s.searchProcessState,
          'searchProcessState',
          const SearchProcessState.error(),
        )
      ],
    );

    blocTest<SearchBloc, SearchState>(
      'emits [error] when addProductToWatchlist fails',
      build: () {
        // Mock the failure case for adding product to watchlist
        when(() => watchlistUseCase.addProductToWatchlist(any()))
            .thenReturn(TaskEither.left(Exception('Failed to add product')));

        return searchBloc;
      },
      act: (bloc) => bloc.add(const SearchEvent.addOrRemoveProductFromWatchlist(
        product: 'EUR/USD',
        isAdd: false,
      )),
      expect: () => [
        isA<SearchState>().having(
          (s) => s.searchProcessState,
          'searchProcessState',
          const SearchProcessState.error(),
        )
      ],
    );

    blocTest<SearchBloc, SearchState>(
      'emits [searchSuccess] and triggers onDoSearchProudcts after successfully adding a product to the watchlist',
      build: () {
        when(() => watchlistUseCase.addProductToWatchlist(any()))
            .thenReturn(TaskEither.right(unit));

        when(() => searchProductUsecase(any(), any())).thenReturn(Right([
          SymbolWatchlistModel(symbolName: 'EUR/USD', isWatchlist: true),
        ]));
        searchBloc.emit(searchBloc.state.copyWith(query: 'EUR'));
        return searchBloc;
      },
      act: (bloc) => bloc.add(const SearchEvent.addOrRemoveProductFromWatchlist(
        product: 'EUR/USD',
        isAdd: false,
      )),
      expect: () => [
        isA<SearchState>()
            .having(
          (s) => s.searchProcessState,
          'searchProcessState',
          const SearchProcessState.searchSuccess(),
        )
            .having(
          (s) => s.symbol,
          'symbol',
          [isA<SymbolWatchlistModel>()],
        ),
      ],
    );

    blocTest<SearchBloc, SearchState>(
      'emits [searchSuccess] and triggers onDoSearchProudcts after successfully removing a product from the watchlist',
      build: () {
        when(() => watchlistUseCase.removeProductFromWatchlist(any()))
            .thenReturn(TaskEither.right(unit));

        when(() => searchProductUsecase(any(), any())).thenReturn(Right([
          SymbolWatchlistModel(symbolName: 'EUR/USD', isWatchlist: false),
        ]));
        searchBloc.emit(searchBloc.state.copyWith(query: 'EUR'));
        return searchBloc;
      },
      act: (bloc) => bloc.add(const SearchEvent.addOrRemoveProductFromWatchlist(
        product: "EUR/USD",
        isAdd: true,
      )),
      expect: () => [
        isA<SearchState>()
            .having(
              (s) => s.searchProcessState,
              'searchProcessState',
              const SearchProcessState.searchSuccess(),
            )
            .having(
              (s) => s.symbol[0].symbolName,
              'symbolName',
              'EUR/USD',
            )
            .having(
              (s) => s.symbol[0].isWatchlist,
              'isWatchlist',
              false,
            )
            .having(
              (s) => s.query,
              'query',
              'EUR',
            ),
      ],
    );
  });
}
