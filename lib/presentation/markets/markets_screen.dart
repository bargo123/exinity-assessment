import 'package:exinity_assessment/core/constants/app_constants.dart';
import 'package:exinity_assessment/core/constants/route_constants.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/presentation/markets/widgets/navigation_buttons.dart';
import 'package:exinity_assessment/presentation/markets/widgets/page_indecator.dart';
import 'package:exinity_assessment/presentation/shared/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exinity_assessment/presentation/markets/bloc/markets_bloc.dart';

class MarketsScreen extends StatefulWidget {
  const MarketsScreen({super.key});

  @override
  State<MarketsScreen> createState() => _MarketsScreenState();
}

class _MarketsScreenState extends State<MarketsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => diContainer<MarketsBloc>()
        ..add(const MarketsEvent.onGetMarketProducts()),
      child: BlocBuilder<MarketsBloc, MarketsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: state.marketProcessState ==
                    const MarketProcessState.success()
                ? AppBar(
                    backgroundColor: Colors.transparent,
                    title: Container(
                      color: Colors.white,
                      child: TextFormField(
                        readOnly: true,
                        onTap: () {
                          Navigator.pushNamed(context, RouteConstants.search,
                              arguments: {
                                AppConstants.symbolArg: state.allSymbols
                              });
                        },
                        decoration: InputDecoration(
                          hintText: "Search products",
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, RouteConstants.search, arguments: {
                                AppConstants.symbolArg: state.allSymbols
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  )
                : null,
            body: state.marketProcessState.map(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              success: (_) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: PageView.builder(
                        onPageChanged: (index) {
                          context
                              .read<MarketsBloc>()
                              .add(MarketsEvent.onChangeGroup(index));
                        },
                        itemCount: (state.allSymbols.length / 10).ceil(),
                        itemBuilder: (context, pageIndex) {
                          final symbolsForGroup = state.displayedSymbols;
                          return ListView.builder(
                            itemCount: symbolsForGroup.length,
                            itemBuilder: (context, index) {
                              final symbol = symbolsForGroup[index];
                              final price = state
                                  .symbolPrices[symbol.symbol]?.price
                                  .toStringAsFixed(5);
                              var isLoss =
                                  state.symbolPrices[symbol.symbol]?.isLoss ??
                                      false;
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomContainer(
                                  child: ListTile(
                                    title: Text(symbol.displaySymbol),
                                    trailing: price != null
                                        ? Text(
                                            price,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: isLoss
                                                    ? Colors.red
                                                    : Colors.green),
                                          )
                                        : const SizedBox(
                                            height: 10,
                                            width: 10,
                                            child: CircularProgressIndicator(
                                              color: Colors.black,
                                              strokeWidth: 2,
                                            )),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    PageIndicator(
                        onTap: (index) {
                          context
                              .read<MarketsBloc>()
                              .add(MarketsEvent.onChangeGroup(index));
                        },
                        currentPage: state.currentGroup,
                        totalPages: (state.allSymbols.length / 10).ceil()),
                    NavigationButtons(
                        onTapLeft: (index) {
                          context
                              .read<MarketsBloc>()
                              .add(MarketsEvent.onChangeGroup(index));
                        },
                        onTapRight: (index) {
                          context
                              .read<MarketsBloc>()
                              .add(MarketsEvent.onChangeGroup(index));
                        },
                        currentPage: state.currentGroup,
                        totalPages: (state.allSymbols.length / 10).ceil()),
                  ],
                );
              },
              error: (_) => const Center(child: Text("Something went wrong")),
            ),
          );
        },
      ),
    );
  }
}
