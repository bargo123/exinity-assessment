import 'package:bloc_test/bloc_test.dart';
import 'package:exinity_assessment/data/models/hive/watchlist_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/presentation/watchlist/bloc/watchlist_bloc.dart';
import 'package:exinity_assessment/presentation/watchlist/watchlist_screen.dart';
import 'package:exinity_assessment/presentation/base/bloc/base_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWatchlistBloc extends MockBloc<WatchlistEvent, WatchlistState>
    implements WatchlistBloc {}

class MockBaseBloc extends MockBloc<BaseEvent, BaseState> implements BaseBloc {}

void main() {
  late MockWatchlistBloc mockWatchlistBloc;
  late MockBaseBloc mockBaseBloc;

  setUp(() {
    diContainer.registerSingleton<WatchlistBloc>(MockWatchlistBloc());
    diContainer.registerSingleton<BaseBloc>(MockBaseBloc());

    mockWatchlistBloc = diContainer<WatchlistBloc>() as MockWatchlistBloc;
    mockBaseBloc = diContainer<BaseBloc>() as MockBaseBloc;
  });

  tearDown(() {
    diContainer.reset();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<WatchlistBloc>.value(value: mockWatchlistBloc),
          BlocProvider<BaseBloc>.value(value: mockBaseBloc),
        ],
        child: const WatchlistScreen(),
      ),
    );
  }

  testWidgets('Displays "Add some products to watchlist" on initial state',
      (WidgetTester tester) async {
    when(() => mockWatchlistBloc.state).thenReturn(const WatchlistState(
        watchlistProcessState: WatchlistProcessState.initial()));

    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.text("Add some products to watchlist"), findsOneWidget);
  });

  testWidgets('Displays list of products when watchlist is fetched',
      (WidgetTester tester) async {
    final watchlistData = [
      WatchlistModel(symbol: 'EUR/USD'),
      WatchlistModel(symbol: 'CHF/JPY'),
    ];

    when(() => mockWatchlistBloc.state).thenReturn(WatchlistState(
      watchlistProcessState: const WatchlistProcessState.watchlistFetched(),
      watchlistData: watchlistData,
    ));

    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pumpAndSettle();

    expect(find.text('EUR/USD'), findsOneWidget);
    expect(find.text('CHF/JPY'), findsOneWidget);
  });

  testWidgets('Displays error message when something goes wrong',
      (WidgetTester tester) async {
    when(() => mockWatchlistBloc.state).thenReturn(const WatchlistState(
        watchlistProcessState: WatchlistProcessState.error()));

    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.text("Somthing went wrong"), findsOneWidget);
  });

  testWidgets('Fetches watchlist when BaseBloc emits tapIndex 1',
      (WidgetTester tester) async {
    when(() => mockBaseBloc.stream).thenAnswer((_) => Stream.value(
          const BaseState(tapIndex: 1),
        ));
    when(() => mockWatchlistBloc.state).thenReturn(const WatchlistState(
        watchlistProcessState: WatchlistProcessState.initial()));

    await tester.pumpWidget(createWidgetUnderTest());

    verify(() =>
            mockWatchlistBloc.add(const WatchlistEvent.getWatchListProducts()))
        .called(1);
  });
}
