import 'package:dio/dio.dart';
import 'package:exinity_assessment/core/constants/remote_constants.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/api_client_base.dart';
import 'package:exinity_assessment/data/data_sources/api_data_source/dio_api_client.dart';
import 'package:exinity_assessment/data/data_sources/hive_database/hive_database_base.dart';
import 'package:exinity_assessment/data/data_sources/hive_database/hive_database_impl.dart';
import 'package:exinity_assessment/data/data_sources/sockets_data_source/socket_client_base.dart';
import 'package:exinity_assessment/data/data_sources/sockets_data_source/web_socket_client.dart';
import 'package:exinity_assessment/data/models/api/symbols_model.dart';
import 'package:exinity_assessment/data/repository/connect_product_hub_repository_impl.dart';
import 'package:exinity_assessment/data/repository/get_symbols_repository_impl.dart';
import 'package:exinity_assessment/data/repository/watchlist_repository_impl.dart';
import 'package:exinity_assessment/domain/repository/connect_products_hub_repository.dart';
import 'package:exinity_assessment/domain/repository/get_symbols_repository.dart';
import 'package:exinity_assessment/domain/repository/watchlist_repository.dart';
import 'package:exinity_assessment/domain/usecase/get_prices_use_case.dart';
import 'package:exinity_assessment/domain/usecase/get_symbols_use_case.dart';
import 'package:exinity_assessment/domain/usecase/search_product_usecase.dart';
import 'package:exinity_assessment/domain/usecase/watchlist_use_case.dart';
import 'package:exinity_assessment/presentation/base/bloc/base_bloc.dart';
import 'package:exinity_assessment/presentation/markets/bloc/markets_bloc.dart';
import 'package:exinity_assessment/presentation/search/bloc/search_bloc.dart';
import 'package:exinity_assessment/presentation/watchlist/bloc/watchlist_bloc.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModules {
  @lazySingleton
  Dio dio() => Dio(BaseOptions(
        baseUrl: RemoteConstants.baseUrlApi,
        receiveDataWhenStatusError: true,
      ));

  @lazySingleton
  ApiClientBase apiClient(Dio dio) => DioApiClient(dio);
  @lazySingleton
  SocketClientBase webSocketClient() => WebSocketClient();
  @lazySingleton
  HiveDatabaseBase hiveDatabase() => HiveDatabaseService();

  @injectable
  GetSymbolsRepository getSymbolsRepository(ApiClientBase apiClient) =>
      GetSymbolsRepositoryImpl(apiClient: apiClient);

  @injectable
  GetSymbolsUseCase getSymbolsUseCase(GetSymbolsRepository repository) =>
      GetSymbolsUseCase(repository: repository);

  @injectable
  ConnectProductsHubRepository connectProductsHubRepository(
          SocketClientBase webSocketClient) =>
      ConnectProductsHubRepositoryImpl(webSocketClient: webSocketClient);

  @injectable
  GetPricesUseCase getPricesUseCase(ConnectProductsHubRepository repository) =>
      GetPricesUseCase(connectProductsHubRepository: repository);
  @injectable
  WatchlistUseCase watchlistUseCase(WatchlistRepository repository) =>
      WatchlistUseCase(repository: repository);
  @injectable
  MarketsBloc marketBloc(GetSymbolsUseCase getSymbolsUseCase,
          GetPricesUseCase getPricesUseCase) =>
      MarketsBloc(
          getSymbolsUseCase: getSymbolsUseCase,
          getPricesUseCase: getPricesUseCase);

  @lazySingleton
  BaseBloc baseBloc() => BaseBloc();

  @injectable
  WatchlistRepository searchProductRepository(
          HiveDatabaseBase hiveDatabaseBase) =>
      WatchlistRepositoryImpl(hiveDatabaseBase: hiveDatabaseBase);

  @injectable
  SearchProductUsecase searchProductUsecase(WatchlistRepository repository) =>
      SearchProductUsecase(repository: repository);

  @injectable
  SearchBloc searchBloc(
          SearchProductUsecase searchProductUsecase,
          @factoryParam List<SymbolModel>? symbols,
          WatchlistUseCase watchlistUseCase) =>
      SearchBloc(
          searchProductUsecase: searchProductUsecase,
          symbols: symbols ?? [],
          watchlistUseCase: watchlistUseCase);

  @injectable
  WatchlistBloc watchlistBloc(WatchlistUseCase watchlistUseCase) =>
      WatchlistBloc(watchlistUseCase: watchlistUseCase);
}
