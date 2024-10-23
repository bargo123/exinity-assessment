import 'package:bloc_test/bloc_test.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/presentation/model/symbol_price_model.dart';
import 'package:exinity_assessment/presentation/markets/bloc/markets_bloc.dart';
import 'package:exinity_assessment/presentation/markets/markets_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMarketsBloc extends MockBloc<MarketsEvent, MarketsState>
    implements MarketsBloc {}

void main() {
  late MockMarketsBloc mockMarketsBloc;

  setUp(() {
    diContainer.registerSingleton<MarketsBloc>(MockMarketsBloc());
    mockMarketsBloc = diContainer<MarketsBloc>() as MockMarketsBloc;
  });

  tearDown(() {
    diContainer.reset();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<MarketsBloc>(
        create: (context) => mockMarketsBloc,
        child: const MarketsScreen(),
      ),
    );
  }

  testWidgets('Displays loading indicator when state is loading',
      (WidgetTester tester) async {
    when(() => mockMarketsBloc.state).thenReturn(const MarketsState(
      marketProcessState: MarketProcessState.loading(),
      allSymbols: [],
      symbolPrices: {},
      displayedSymbols: [],
      currentGroup: 0,
    ));

    // Act
    await tester.pumpWidget(createWidgetUnderTest());

    // Assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('Displays error message when state is error',
      (WidgetTester tester) async {
    when(() => mockMarketsBloc.state).thenReturn(const MarketsState(
      marketProcessState: MarketProcessState.error(),
    ));

    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.text('Something went wrong'), findsOneWidget);
  });

  testWidgets('Displays market data when state is success',
      (WidgetTester tester) async {
    // Arrange
    when(() => mockMarketsBloc.state).thenReturn(MarketsState(
      marketProcessState: const MarketProcessState.success(),
      allSymbols: [
        SymbolModel(
            symbol: 'EURUSD', displaySymbol: 'EUR/USD', description: ''),
        SymbolModel(
            symbol: 'GBPUSD', displaySymbol: 'GBP/USD', description: ''),
      ],
      symbolPrices: {
        'EURUSD':
            SymbolPriceModel(symbol: 'EURUSD', price: 1.12345, isLoss: false),
        'GBPUSD':
            SymbolPriceModel(symbol: 'GBPUSD', price: 1.23456, isLoss: true),
      },
      displayedSymbols: [
        SymbolModel(
            symbol: 'EURUSD', displaySymbol: 'EUR/USD', description: ''),
        SymbolModel(
            symbol: 'GBPUSD', displaySymbol: 'GBP/USD', description: ''),
      ],
      currentGroup: 0,
    ));

    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pumpAndSettle();

    expect(find.text('EUR/USD'), findsOneWidget);
    expect(find.text('1.12345'), findsOneWidget);
    expect(find.text('GBP/USD'), findsOneWidget);
    expect(find.text('1.23456'), findsOneWidget);
  });
}
