part of 'watchlist_bloc.dart';

@freezed
class WatchlistState with _$WatchlistState {
  const factory WatchlistState(
      {@Default([]) List<WatchlistModel?> watchlistData,
      @Default(WatchlistProcessState.initial())
      WatchlistProcessState watchlistProcessState}) = _WatchlistState;
}

@freezed
sealed class WatchlistProcessState with _$WatchlistProcessState {
  const factory WatchlistProcessState.initial() = _WatchlistProcessStateInital;
  const factory WatchlistProcessState.watchlistFetched() =
      _WatchlistProcessStateSuccess;
  const factory WatchlistProcessState.error() = _WatchlistProcessStateError;
}
