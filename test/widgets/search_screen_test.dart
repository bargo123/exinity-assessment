import 'package:bloc_test/bloc_test.dart';
import 'package:exinity_assessment/core/constants/app_constants.dart';
import 'package:exinity_assessment/core/constants/route_constants.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/domain/models/watchlist_model.dart';
import 'package:exinity_assessment/presentation/search/bloc/search_bloc.dart';
import 'package:exinity_assessment/presentation/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// MockBloc implementation for SearchBloc
class MockSearchBloc extends MockBloc<SearchEvent, SearchState>
    implements SearchBloc {}

void main() {
  late MockSearchBloc mockSearchBloc;

  setUp(() {
    mockSearchBloc = MockSearchBloc();
    diContainer.registerFactory<SearchBloc>(() => mockSearchBloc);
  });

  tearDown(() {
    diContainer.reset();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
        onGenerateRoute: (settings) => MaterialPageRoute(
              settings: RouteSettings(name: RouteConstants.search, arguments: {
                AppConstants.symbolArg: [
                  SymbolModel(
                      description: '',
                      displaySymbol: 'EUR/USD',
                      symbol: 'EUR_USD')
                ]
              }),
              builder: (context) => BlocProvider<SearchBloc>(
                create: (context) => mockSearchBloc,
                child: const SearchScreen(),
              ),
            ));
  }

  testWidgets('Displays loading indicator when search state is loading',
      (WidgetTester tester) async {
    when(() => mockSearchBloc.state).thenReturn(const SearchState(
      searchProcessState: SearchProcessState.searchLoading(),
      symbol: [],
    ));

    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pump();

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('Displays products when search state is success',
      (WidgetTester tester) async {
    when(() => mockSearchBloc.state).thenReturn(SearchState(
      searchProcessState: const SearchProcessState.searchSuccess(),
      symbol: [
        SymbolWatchlistModel(symbolName: 'EURUSD', isWatchlist: false),
        SymbolWatchlistModel(symbolName: 'GBPUSD', isWatchlist: true),
      ],
    ));

    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pumpAndSettle();

    expect(find.text('EURUSD'), findsOneWidget);
    expect(find.text('GBPUSD'), findsOneWidget);
  });

  testWidgets('Displays no products message when search is empty',
      (WidgetTester tester) async {
    when(() => mockSearchBloc.state).thenReturn(const SearchState(
      searchProcessState: SearchProcessState.searchEmpty(),
      symbol: [],
    ));

    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.text('No products found'), findsOneWidget);
  });

  testWidgets('Performs search when user types in search field',
      (WidgetTester tester) async {
    when(() => mockSearchBloc.state).thenReturn(const SearchState(
      searchProcessState: SearchProcessState.initial(),
      symbol: [],
    ));

    await tester.pumpWidget(createWidgetUnderTest());

    await tester.enterText(find.byType(TextFormField), 'EURUSD');
    await tester.pump();

    expect(find.text('EURUSD'), findsOneWidget);
  });
}
