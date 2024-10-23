import 'package:exinity_assessment/core/constants/hive_constants.dart';
import 'package:exinity_assessment/data/data_sources/hive_database/hive_database_base.dart';
import 'package:exinity_assessment/data/models/hive/watchlist_model.dart';
import 'package:exinity_assessment/di/di_initializer.dart';
import 'package:exinity_assessment/presentation/base/base_screen.dart';
import 'package:exinity_assessment/presentation/no_api_key/no_api_key_screen.dart';
import 'package:exinity_assessment/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  configureDependencies();
  await Hive.initFlutter();
  Hive.registerAdapter(WatchlistModelAdapter());
  var box = await diContainer<HiveDatabaseBase>()
      .openBox<WatchlistModel>(HiveConstants.watchlistBoxName)
      .run();
  box.fold((l) => debugPrint(l.toString()), (r) => debugPrint("Box Opened"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffF2F5F9),
        ),
        scaffoldBackgroundColor: const Color(0xffF2F5F9),

        // colorScheme: const ColorScheme.light(),
      ),
      routes: routes,
      home: (dotenv.env['API_KEY'] != null && dotenv.env['API_KEY']!.isNotEmpty)
          ? const BaseScreen()
          : const NoApiKeyScreen(),
    );
  }
}
