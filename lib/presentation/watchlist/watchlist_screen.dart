import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/presentation/base/bloc/base_bloc.dart';
import 'package:exinity_assessment/presentation/watchlist/bloc/watchlist_bloc.dart';
import 'package:exinity_assessment/presentation/shared/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WatchlistScreen extends StatefulWidget {
  const WatchlistScreen({super.key});

  @override
  State<WatchlistScreen> createState() => _WatchlistScreenState();
}

class _WatchlistScreenState extends State<WatchlistScreen> {
  var bloc = diContainer<WatchlistBloc>();
  @override
  void initState() {
    context
        .read<BaseBloc>()
        .stream
        .where((val) => val.tapIndex == 1)
        .distinct((oldVal, newVal) => oldVal.tapIndex != newVal.tapIndex)
        .listen((event) {
      bloc.add(const WatchlistEvent.getWatchListProducts());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: BlocBuilder<WatchlistBloc, WatchlistState>(
        buildWhen: (previous, current) =>
            previous.watchlistProcessState != current.watchlistProcessState,
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text("Watchlist"),
              ),
              body: state.watchlistProcessState.map(
                initial: (_) {
                  return const Center(
                    child: Text("Add some products to watchlist"),
                  );
                },
                watchlistFetched: (_) {
                  return BlocBuilder<WatchlistBloc, WatchlistState>(
                    buildWhen: (previous, current) =>
                        previous.watchlistData.length !=
                        current.watchlistData.length,
                    builder: (context, state) {
                      return ListView.builder(
                        itemCount: state.watchlistData.length,
                        itemBuilder: (context, index) {
                          return CustomContainer(
                            child: ListTile(
                              title: Text(
                                  state.watchlistData[index]?.symbol ?? ""),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                error: (_) {
                  return const Center(
                    child: Text("Somthing went wrong"),
                  );
                },
              ));
        },
      ),
    );
  }
}
