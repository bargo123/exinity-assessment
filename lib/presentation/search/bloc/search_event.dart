part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.onDoSearchProudcts(String query) =
      _OnDoSearchProudcts;
  const factory SearchEvent.addOrRemoveProductFromWatchlist(
      {required String product,
      required bool isAdd}) = _AddOrRemoveProductFromWatchlist;
}
