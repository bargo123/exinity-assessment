import 'package:exinity_assessment/core/constants/app_constants.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/presentation/search/bloc/search_bloc.dart';
import 'package:exinity_assessment/presentation/shared/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<SymbolModel> symbolArg = [];
  @override
  Widget build(BuildContext context) {
    var argument =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    symbolArg = argument[AppConstants.symbolArg] ?? [];
    return BlocProvider<SearchBloc>(
        create: (context) => diContainer<SearchBloc>(param1: symbolArg),
        child: Scaffold(
            appBar: AppBar(
              scrolledUnderElevation: 0,
              title: BlocBuilder<SearchBloc, SearchState>(
                buildWhen: (previous, current) =>
                    previous.searchProcessState != current.searchProcessState,
                builder: (context, state) {
                  return TextFormField(
                    onChanged: (value) {
                      context
                          .read<SearchBloc>()
                          .add(SearchEvent.onDoSearchProudcts(value));
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
                        onPressed: () {},
                      ),
                    ),
                  );
                },
              ),
            ),
            body: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return state.searchProcessState.map(
                    initial: (value) =>
                        const Center(child: Text("Search for products")),
                    searchEmpty: (value) =>
                        const Center(child: Text("No products found")),
                    searchLoading: (_) =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error) =>
                        const Center(child: Text("Somthing went wrong")),
                    searchSuccess: (success) => ListView.builder(
                          itemCount: state.symbol.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomContainer(
                                child: ListTile(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(state.symbol[index].symbolName),
                                      IconButton(
                                        onPressed: () {
                                          context.read<SearchBloc>().add(
                                              SearchEvent
                                                  .addOrRemoveProductFromWatchlist(
                                                      product: state
                                                          .symbol[index]
                                                          .symbolName,
                                                      isAdd: state.symbol[index]
                                                          .isWatchlist));
                                        },
                                        icon: Icon(
                                            state.symbol[index].isWatchlist
                                                ? Icons.favorite
                                                : Icons.favorite_border),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ));
              },
            )));
  }
}
