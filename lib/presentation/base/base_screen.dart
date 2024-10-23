import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/presentation/base/bloc/base_bloc.dart';
import 'package:exinity_assessment/presentation/markets/markets_screen.dart';
import 'package:exinity_assessment/presentation/watchlist/watchlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => diContainer<BaseBloc>(),
      child: BlocBuilder<BaseBloc, BaseState>(
        builder: (context, state) {
          return Scaffold(
              body: IndexedStack(
                  index: state.tapIndex,
                  children: const [MarketsScreen(), WatchlistScreen()]),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: state.tapIndex,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey,
                onTap: (index) {
                  context.read<BaseBloc>().add(BaseEvent.changeTapIndex(index));
                },
                items: const [
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.list,
                      color: Colors.black,
                    ),
                    icon: Icon(
                      Icons.list,
                      color: Colors.grey,
                    ),
                    label: 'Market',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    label: 'Watchlist',
                  ),
                ],
              ));
        },
      ),
    );
  }
}
