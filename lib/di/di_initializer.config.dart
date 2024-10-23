// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:exinity_assessment/data/data_sources/api_data_source/api_client_base.dart'
    as _i1027;
import 'package:exinity_assessment/data/data_sources/hive_database/hive_database_base.dart'
    as _i292;
import 'package:exinity_assessment/data/data_sources/sockets_data_source/socket_client_base.dart'
    as _i787;
import 'package:exinity_assessment/data/models/api/symbols_model.dart' as _i859;
import 'package:exinity_assessment/di/app_modules.dart' as _i687;
import 'package:exinity_assessment/domain/repository/connect_products_hub_repository.dart'
    as _i597;
import 'package:exinity_assessment/domain/repository/get_symbols_repository.dart'
    as _i701;
import 'package:exinity_assessment/domain/repository/watchlist_repository.dart'
    as _i1006;
import 'package:exinity_assessment/domain/usecase/get_prices_use_case.dart'
    as _i625;
import 'package:exinity_assessment/domain/usecase/get_symbols_use_case.dart'
    as _i1064;
import 'package:exinity_assessment/domain/usecase/search_product_usecase.dart'
    as _i72;
import 'package:exinity_assessment/domain/usecase/watchlist_use_case.dart'
    as _i356;
import 'package:exinity_assessment/presentation/base/bloc/base_bloc.dart'
    as _i161;
import 'package:exinity_assessment/presentation/markets/bloc/markets_bloc.dart'
    as _i524;
import 'package:exinity_assessment/presentation/search/bloc/search_bloc.dart'
    as _i232;
import 'package:exinity_assessment/presentation/watchlist/bloc/watchlist_bloc.dart'
    as _i579;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModules = _$AppModules();
    gh.lazySingleton<_i361.Dio>(() => appModules.dio());
    gh.lazySingleton<_i787.SocketClientBase>(
        () => appModules.webSocketClient());
    gh.lazySingleton<_i292.HiveDatabaseBase>(() => appModules.hiveDatabase());
    gh.lazySingleton<_i161.BaseBloc>(() => appModules.baseBloc());
    gh.lazySingleton<_i1027.ApiClientBase>(
        () => appModules.apiClient(gh<_i361.Dio>()));
    gh.factory<_i597.ConnectProductsHubRepository>(() =>
        appModules.connectProductsHubRepository(gh<_i787.SocketClientBase>()));
    gh.factory<_i625.GetPricesUseCase>(() =>
        appModules.getPricesUseCase(gh<_i597.ConnectProductsHubRepository>()));
    gh.factory<_i701.GetSymbolsRepository>(
        () => appModules.getSymbolsRepository(gh<_i1027.ApiClientBase>()));
    gh.factory<_i1006.WatchlistRepository>(
        () => appModules.searchProductRepository(gh<_i292.HiveDatabaseBase>()));
    gh.factory<_i1064.GetSymbolsUseCase>(
        () => appModules.getSymbolsUseCase(gh<_i701.GetSymbolsRepository>()));
    gh.factory<_i356.WatchlistUseCase>(
        () => appModules.watchlistUseCase(gh<_i1006.WatchlistRepository>()));
    gh.factory<_i72.SearchProductUsecase>(() =>
        appModules.searchProductUsecase(gh<_i1006.WatchlistRepository>()));
    gh.factory<_i524.MarketsBloc>(() => appModules.marketBloc(
          gh<_i1064.GetSymbolsUseCase>(),
          gh<_i625.GetPricesUseCase>(),
        ));
    gh.factoryParam<_i232.SearchBloc, List<_i859.SymbolModel>?, dynamic>((
      symbols,
      _,
    ) =>
        appModules.searchBloc(
          gh<_i72.SearchProductUsecase>(),
          symbols,
          gh<_i356.WatchlistUseCase>(),
        ));
    gh.factory<_i579.WatchlistBloc>(
        () => appModules.watchlistBloc(gh<_i356.WatchlistUseCase>()));
    return this;
  }
}

class _$AppModules extends _i687.AppModules {}
