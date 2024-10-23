import 'package:bloc_test/bloc_test.dart';
import 'package:exinity_assessment/data/models/hive/watchlist_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/domain/usecase/watchlist_use_case.dart';
import 'package:exinity_assessment/presentation/watchlist/bloc/watchlist_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockWatchlistUseCase extends Mock implements WatchlistUseCase {}

void main() {
  late WatchlistBloc watchlistBloc;
  late MockWatchlistUseCase watchlistUseCase;

  setUp(() {
    diContainer.registerSingleton<WatchlistUseCase>(MockWatchlistUseCase());
    watchlistUseCase =
        diContainer.get<WatchlistUseCase>() as MockWatchlistUseCase;
    watchlistBloc = WatchlistBloc(watchlistUseCase: watchlistUseCase);
  });

  tearDown(() {
    diContainer.reset();
    watchlistBloc.close();
  });

  group('WatchlistBloc', () {
    test('initial state is WatchlistProcessState.initial', () {
      expect(watchlistBloc.state.watchlistProcessState,
          const WatchlistProcessState.initial());
    });

    blocTest<WatchlistBloc, WatchlistState>(
      'emits [watchlistFetched] when watchlist products are fetched successfully',
      build: () {
        when(() => watchlistUseCase.getWatchListProducts()).thenReturn(
          Right([
            WatchlistModel(symbol: 'EUR/USD'),
            WatchlistModel(symbol: 'CHF/JPY'),
          ]),
        );

        return watchlistBloc;
      },
      act: (bloc) => bloc.add(const WatchlistEvent.getWatchListProducts()),
      expect: () => [
        isA<WatchlistState>()
            .having(
              (s) => s.watchlistProcessState,
              'watchlistProcessState',
              const WatchlistProcessState.watchlistFetched(),
            )
            .having(
              (s) => s.watchlistData.first?.symbol,
              'watchlistData',
              "EUR/USD",
            ),
      ],
    );

    blocTest<WatchlistBloc, WatchlistState>(
      'emits [initial] when watchlist is empty',
      build: () {
        when(() => watchlistUseCase.getWatchListProducts())
            .thenReturn(const Right([]));

        return watchlistBloc;
      },
      act: (bloc) => bloc.add(const WatchlistEvent.getWatchListProducts()),
      expect: () => [
        isA<WatchlistState>()
            .having(
          (s) => s.watchlistProcessState,
          'watchlistProcessState',
          const WatchlistProcessState.initial(),
        )
            .having(
          (s) => s.watchlistData,
          'watchlistData',
          [],
        ),
      ],
    );

    blocTest<WatchlistBloc, WatchlistState>(
      'emits [error] when fetching watchlist products fails',
      build: () {
        when(() => watchlistUseCase.getWatchListProducts())
            .thenReturn(Left(Exception('Error occurred')));

        return watchlistBloc;
      },
      act: (bloc) => bloc.add(const WatchlistEvent.getWatchListProducts()),
      expect: () => [
        isA<WatchlistState>().having(
          (s) => s.watchlistProcessState,
          'watchlistProcessState',
          const WatchlistProcessState.error(),
        ),
      ],
    );
  });
}
