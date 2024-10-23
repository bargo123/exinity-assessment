part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchProcessState.initial())
    SearchProcessState searchProcessState,
    @Default([]) List<SymbolWatchlistModel> symbol,
    @Default("") String query,
  }) = _SearchState;
}

@freezed
sealed class SearchProcessState with _$SearchProcessState {
  const factory SearchProcessState.searchLoading() = _SearchProcessStateLoading;
  const factory SearchProcessState.searchSuccess() = _SearchProcessStateSuccess;
  const factory SearchProcessState.error() = _SearchProcessStateError;
  const factory SearchProcessState.searchEmpty() =
      _SearchProcessStateSearchEmpty;
  const factory SearchProcessState.initial() = _SearchProcessStateInital;
}
