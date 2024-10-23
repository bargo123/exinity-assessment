// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) onDoSearchProudcts,
    required TResult Function(String product, bool isAdd)
        addOrRemoveProductFromWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? onDoSearchProudcts,
    TResult? Function(String product, bool isAdd)?
        addOrRemoveProductFromWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? onDoSearchProudcts,
    TResult Function(String product, bool isAdd)?
        addOrRemoveProductFromWatchlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnDoSearchProudcts value) onDoSearchProudcts,
    required TResult Function(_AddOrRemoveProductFromWatchlist value)
        addOrRemoveProductFromWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnDoSearchProudcts value)? onDoSearchProudcts,
    TResult? Function(_AddOrRemoveProductFromWatchlist value)?
        addOrRemoveProductFromWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnDoSearchProudcts value)? onDoSearchProudcts,
    TResult Function(_AddOrRemoveProductFromWatchlist value)?
        addOrRemoveProductFromWatchlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnDoSearchProudctsImplCopyWith<$Res> {
  factory _$$OnDoSearchProudctsImplCopyWith(_$OnDoSearchProudctsImpl value,
          $Res Function(_$OnDoSearchProudctsImpl) then) =
      __$$OnDoSearchProudctsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$OnDoSearchProudctsImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OnDoSearchProudctsImpl>
    implements _$$OnDoSearchProudctsImplCopyWith<$Res> {
  __$$OnDoSearchProudctsImplCopyWithImpl(_$OnDoSearchProudctsImpl _value,
      $Res Function(_$OnDoSearchProudctsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$OnDoSearchProudctsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnDoSearchProudctsImpl implements _OnDoSearchProudcts {
  const _$OnDoSearchProudctsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.onDoSearchProudcts(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDoSearchProudctsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDoSearchProudctsImplCopyWith<_$OnDoSearchProudctsImpl> get copyWith =>
      __$$OnDoSearchProudctsImplCopyWithImpl<_$OnDoSearchProudctsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) onDoSearchProudcts,
    required TResult Function(String product, bool isAdd)
        addOrRemoveProductFromWatchlist,
  }) {
    return onDoSearchProudcts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? onDoSearchProudcts,
    TResult? Function(String product, bool isAdd)?
        addOrRemoveProductFromWatchlist,
  }) {
    return onDoSearchProudcts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? onDoSearchProudcts,
    TResult Function(String product, bool isAdd)?
        addOrRemoveProductFromWatchlist,
    required TResult orElse(),
  }) {
    if (onDoSearchProudcts != null) {
      return onDoSearchProudcts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnDoSearchProudcts value) onDoSearchProudcts,
    required TResult Function(_AddOrRemoveProductFromWatchlist value)
        addOrRemoveProductFromWatchlist,
  }) {
    return onDoSearchProudcts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnDoSearchProudcts value)? onDoSearchProudcts,
    TResult? Function(_AddOrRemoveProductFromWatchlist value)?
        addOrRemoveProductFromWatchlist,
  }) {
    return onDoSearchProudcts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnDoSearchProudcts value)? onDoSearchProudcts,
    TResult Function(_AddOrRemoveProductFromWatchlist value)?
        addOrRemoveProductFromWatchlist,
    required TResult orElse(),
  }) {
    if (onDoSearchProudcts != null) {
      return onDoSearchProudcts(this);
    }
    return orElse();
  }
}

abstract class _OnDoSearchProudcts implements SearchEvent {
  const factory _OnDoSearchProudcts(final String query) =
      _$OnDoSearchProudctsImpl;

  String get query;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnDoSearchProudctsImplCopyWith<_$OnDoSearchProudctsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOrRemoveProductFromWatchlistImplCopyWith<$Res> {
  factory _$$AddOrRemoveProductFromWatchlistImplCopyWith(
          _$AddOrRemoveProductFromWatchlistImpl value,
          $Res Function(_$AddOrRemoveProductFromWatchlistImpl) then) =
      __$$AddOrRemoveProductFromWatchlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String product, bool isAdd});
}

/// @nodoc
class __$$AddOrRemoveProductFromWatchlistImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res,
        _$AddOrRemoveProductFromWatchlistImpl>
    implements _$$AddOrRemoveProductFromWatchlistImplCopyWith<$Res> {
  __$$AddOrRemoveProductFromWatchlistImplCopyWithImpl(
      _$AddOrRemoveProductFromWatchlistImpl _value,
      $Res Function(_$AddOrRemoveProductFromWatchlistImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? isAdd = null,
  }) {
    return _then(_$AddOrRemoveProductFromWatchlistImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      isAdd: null == isAdd
          ? _value.isAdd
          : isAdd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddOrRemoveProductFromWatchlistImpl
    implements _AddOrRemoveProductFromWatchlist {
  const _$AddOrRemoveProductFromWatchlistImpl(
      {required this.product, required this.isAdd});

  @override
  final String product;
  @override
  final bool isAdd;

  @override
  String toString() {
    return 'SearchEvent.addOrRemoveProductFromWatchlist(product: $product, isAdd: $isAdd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrRemoveProductFromWatchlistImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isAdd, isAdd) || other.isAdd == isAdd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, isAdd);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrRemoveProductFromWatchlistImplCopyWith<
          _$AddOrRemoveProductFromWatchlistImpl>
      get copyWith => __$$AddOrRemoveProductFromWatchlistImplCopyWithImpl<
          _$AddOrRemoveProductFromWatchlistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) onDoSearchProudcts,
    required TResult Function(String product, bool isAdd)
        addOrRemoveProductFromWatchlist,
  }) {
    return addOrRemoveProductFromWatchlist(product, isAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? onDoSearchProudcts,
    TResult? Function(String product, bool isAdd)?
        addOrRemoveProductFromWatchlist,
  }) {
    return addOrRemoveProductFromWatchlist?.call(product, isAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? onDoSearchProudcts,
    TResult Function(String product, bool isAdd)?
        addOrRemoveProductFromWatchlist,
    required TResult orElse(),
  }) {
    if (addOrRemoveProductFromWatchlist != null) {
      return addOrRemoveProductFromWatchlist(product, isAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnDoSearchProudcts value) onDoSearchProudcts,
    required TResult Function(_AddOrRemoveProductFromWatchlist value)
        addOrRemoveProductFromWatchlist,
  }) {
    return addOrRemoveProductFromWatchlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnDoSearchProudcts value)? onDoSearchProudcts,
    TResult? Function(_AddOrRemoveProductFromWatchlist value)?
        addOrRemoveProductFromWatchlist,
  }) {
    return addOrRemoveProductFromWatchlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnDoSearchProudcts value)? onDoSearchProudcts,
    TResult Function(_AddOrRemoveProductFromWatchlist value)?
        addOrRemoveProductFromWatchlist,
    required TResult orElse(),
  }) {
    if (addOrRemoveProductFromWatchlist != null) {
      return addOrRemoveProductFromWatchlist(this);
    }
    return orElse();
  }
}

abstract class _AddOrRemoveProductFromWatchlist implements SearchEvent {
  const factory _AddOrRemoveProductFromWatchlist(
      {required final String product,
      required final bool isAdd}) = _$AddOrRemoveProductFromWatchlistImpl;

  String get product;
  bool get isAdd;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrRemoveProductFromWatchlistImplCopyWith<
          _$AddOrRemoveProductFromWatchlistImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  SearchProcessState get searchProcessState =>
      throw _privateConstructorUsedError;
  List<SymbolWatchlistModel> get symbol => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {SearchProcessState searchProcessState,
      List<SymbolWatchlistModel> symbol,
      String query});

  $SearchProcessStateCopyWith<$Res> get searchProcessState;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchProcessState = null,
    Object? symbol = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      searchProcessState: null == searchProcessState
          ? _value.searchProcessState
          : searchProcessState // ignore: cast_nullable_to_non_nullable
              as SearchProcessState,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as List<SymbolWatchlistModel>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchProcessStateCopyWith<$Res> get searchProcessState {
    return $SearchProcessStateCopyWith<$Res>(_value.searchProcessState,
        (value) {
      return _then(_value.copyWith(searchProcessState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchProcessState searchProcessState,
      List<SymbolWatchlistModel> symbol,
      String query});

  @override
  $SearchProcessStateCopyWith<$Res> get searchProcessState;
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchProcessState = null,
    Object? symbol = null,
    Object? query = null,
  }) {
    return _then(_$SearchStateImpl(
      searchProcessState: null == searchProcessState
          ? _value.searchProcessState
          : searchProcessState // ignore: cast_nullable_to_non_nullable
              as SearchProcessState,
      symbol: null == symbol
          ? _value._symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as List<SymbolWatchlistModel>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {this.searchProcessState = const SearchProcessState.initial(),
      final List<SymbolWatchlistModel> symbol = const [],
      this.query = ""})
      : _symbol = symbol;

  @override
  @JsonKey()
  final SearchProcessState searchProcessState;
  final List<SymbolWatchlistModel> _symbol;
  @override
  @JsonKey()
  List<SymbolWatchlistModel> get symbol {
    if (_symbol is EqualUnmodifiableListView) return _symbol;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symbol);
  }

  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'SearchState(searchProcessState: $searchProcessState, symbol: $symbol, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.searchProcessState, searchProcessState) ||
                other.searchProcessState == searchProcessState) &&
            const DeepCollectionEquality().equals(other._symbol, _symbol) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchProcessState,
      const DeepCollectionEquality().hash(_symbol), query);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final SearchProcessState searchProcessState,
      final List<SymbolWatchlistModel> symbol,
      final String query}) = _$SearchStateImpl;

  @override
  SearchProcessState get searchProcessState;
  @override
  List<SymbolWatchlistModel> get symbol;
  @override
  String get query;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchLoading,
    required TResult Function() searchSuccess,
    required TResult Function() error,
    required TResult Function() searchEmpty,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchLoading,
    TResult? Function()? searchSuccess,
    TResult? Function()? error,
    TResult? Function()? searchEmpty,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchLoading,
    TResult Function()? searchSuccess,
    TResult Function()? error,
    TResult Function()? searchEmpty,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProcessStateLoading value) searchLoading,
    required TResult Function(_SearchProcessStateSuccess value) searchSuccess,
    required TResult Function(_SearchProcessStateError value) error,
    required TResult Function(_SearchProcessStateSearchEmpty value) searchEmpty,
    required TResult Function(_SearchProcessStateInital value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProcessStateLoading value)? searchLoading,
    TResult? Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult? Function(_SearchProcessStateError value)? error,
    TResult? Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult? Function(_SearchProcessStateInital value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProcessStateLoading value)? searchLoading,
    TResult Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult Function(_SearchProcessStateError value)? error,
    TResult Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult Function(_SearchProcessStateInital value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProcessStateCopyWith<$Res> {
  factory $SearchProcessStateCopyWith(
          SearchProcessState value, $Res Function(SearchProcessState) then) =
      _$SearchProcessStateCopyWithImpl<$Res, SearchProcessState>;
}

/// @nodoc
class _$SearchProcessStateCopyWithImpl<$Res, $Val extends SearchProcessState>
    implements $SearchProcessStateCopyWith<$Res> {
  _$SearchProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchProcessStateLoadingImplCopyWith<$Res> {
  factory _$$SearchProcessStateLoadingImplCopyWith(
          _$SearchProcessStateLoadingImpl value,
          $Res Function(_$SearchProcessStateLoadingImpl) then) =
      __$$SearchProcessStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchProcessStateLoadingImplCopyWithImpl<$Res>
    extends _$SearchProcessStateCopyWithImpl<$Res,
        _$SearchProcessStateLoadingImpl>
    implements _$$SearchProcessStateLoadingImplCopyWith<$Res> {
  __$$SearchProcessStateLoadingImplCopyWithImpl(
      _$SearchProcessStateLoadingImpl _value,
      $Res Function(_$SearchProcessStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchProcessStateLoadingImpl implements _SearchProcessStateLoading {
  const _$SearchProcessStateLoadingImpl();

  @override
  String toString() {
    return 'SearchProcessState.searchLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProcessStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchLoading,
    required TResult Function() searchSuccess,
    required TResult Function() error,
    required TResult Function() searchEmpty,
    required TResult Function() initial,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchLoading,
    TResult? Function()? searchSuccess,
    TResult? Function()? error,
    TResult? Function()? searchEmpty,
    TResult? Function()? initial,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchLoading,
    TResult Function()? searchSuccess,
    TResult Function()? error,
    TResult Function()? searchEmpty,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProcessStateLoading value) searchLoading,
    required TResult Function(_SearchProcessStateSuccess value) searchSuccess,
    required TResult Function(_SearchProcessStateError value) error,
    required TResult Function(_SearchProcessStateSearchEmpty value) searchEmpty,
    required TResult Function(_SearchProcessStateInital value) initial,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProcessStateLoading value)? searchLoading,
    TResult? Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult? Function(_SearchProcessStateError value)? error,
    TResult? Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult? Function(_SearchProcessStateInital value)? initial,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProcessStateLoading value)? searchLoading,
    TResult Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult Function(_SearchProcessStateError value)? error,
    TResult Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult Function(_SearchProcessStateInital value)? initial,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class _SearchProcessStateLoading implements SearchProcessState {
  const factory _SearchProcessStateLoading() = _$SearchProcessStateLoadingImpl;
}

/// @nodoc
abstract class _$$SearchProcessStateSuccessImplCopyWith<$Res> {
  factory _$$SearchProcessStateSuccessImplCopyWith(
          _$SearchProcessStateSuccessImpl value,
          $Res Function(_$SearchProcessStateSuccessImpl) then) =
      __$$SearchProcessStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchProcessStateSuccessImplCopyWithImpl<$Res>
    extends _$SearchProcessStateCopyWithImpl<$Res,
        _$SearchProcessStateSuccessImpl>
    implements _$$SearchProcessStateSuccessImplCopyWith<$Res> {
  __$$SearchProcessStateSuccessImplCopyWithImpl(
      _$SearchProcessStateSuccessImpl _value,
      $Res Function(_$SearchProcessStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchProcessStateSuccessImpl implements _SearchProcessStateSuccess {
  const _$SearchProcessStateSuccessImpl();

  @override
  String toString() {
    return 'SearchProcessState.searchSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProcessStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchLoading,
    required TResult Function() searchSuccess,
    required TResult Function() error,
    required TResult Function() searchEmpty,
    required TResult Function() initial,
  }) {
    return searchSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchLoading,
    TResult? Function()? searchSuccess,
    TResult? Function()? error,
    TResult? Function()? searchEmpty,
    TResult? Function()? initial,
  }) {
    return searchSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchLoading,
    TResult Function()? searchSuccess,
    TResult Function()? error,
    TResult Function()? searchEmpty,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProcessStateLoading value) searchLoading,
    required TResult Function(_SearchProcessStateSuccess value) searchSuccess,
    required TResult Function(_SearchProcessStateError value) error,
    required TResult Function(_SearchProcessStateSearchEmpty value) searchEmpty,
    required TResult Function(_SearchProcessStateInital value) initial,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProcessStateLoading value)? searchLoading,
    TResult? Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult? Function(_SearchProcessStateError value)? error,
    TResult? Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult? Function(_SearchProcessStateInital value)? initial,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProcessStateLoading value)? searchLoading,
    TResult Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult Function(_SearchProcessStateError value)? error,
    TResult Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult Function(_SearchProcessStateInital value)? initial,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchProcessStateSuccess implements SearchProcessState {
  const factory _SearchProcessStateSuccess() = _$SearchProcessStateSuccessImpl;
}

/// @nodoc
abstract class _$$SearchProcessStateErrorImplCopyWith<$Res> {
  factory _$$SearchProcessStateErrorImplCopyWith(
          _$SearchProcessStateErrorImpl value,
          $Res Function(_$SearchProcessStateErrorImpl) then) =
      __$$SearchProcessStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchProcessStateErrorImplCopyWithImpl<$Res>
    extends _$SearchProcessStateCopyWithImpl<$Res,
        _$SearchProcessStateErrorImpl>
    implements _$$SearchProcessStateErrorImplCopyWith<$Res> {
  __$$SearchProcessStateErrorImplCopyWithImpl(
      _$SearchProcessStateErrorImpl _value,
      $Res Function(_$SearchProcessStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchProcessStateErrorImpl implements _SearchProcessStateError {
  const _$SearchProcessStateErrorImpl();

  @override
  String toString() {
    return 'SearchProcessState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProcessStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchLoading,
    required TResult Function() searchSuccess,
    required TResult Function() error,
    required TResult Function() searchEmpty,
    required TResult Function() initial,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchLoading,
    TResult? Function()? searchSuccess,
    TResult? Function()? error,
    TResult? Function()? searchEmpty,
    TResult? Function()? initial,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchLoading,
    TResult Function()? searchSuccess,
    TResult Function()? error,
    TResult Function()? searchEmpty,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProcessStateLoading value) searchLoading,
    required TResult Function(_SearchProcessStateSuccess value) searchSuccess,
    required TResult Function(_SearchProcessStateError value) error,
    required TResult Function(_SearchProcessStateSearchEmpty value) searchEmpty,
    required TResult Function(_SearchProcessStateInital value) initial,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProcessStateLoading value)? searchLoading,
    TResult? Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult? Function(_SearchProcessStateError value)? error,
    TResult? Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult? Function(_SearchProcessStateInital value)? initial,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProcessStateLoading value)? searchLoading,
    TResult Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult Function(_SearchProcessStateError value)? error,
    TResult Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult Function(_SearchProcessStateInital value)? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchProcessStateError implements SearchProcessState {
  const factory _SearchProcessStateError() = _$SearchProcessStateErrorImpl;
}

/// @nodoc
abstract class _$$SearchProcessStateSearchEmptyImplCopyWith<$Res> {
  factory _$$SearchProcessStateSearchEmptyImplCopyWith(
          _$SearchProcessStateSearchEmptyImpl value,
          $Res Function(_$SearchProcessStateSearchEmptyImpl) then) =
      __$$SearchProcessStateSearchEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchProcessStateSearchEmptyImplCopyWithImpl<$Res>
    extends _$SearchProcessStateCopyWithImpl<$Res,
        _$SearchProcessStateSearchEmptyImpl>
    implements _$$SearchProcessStateSearchEmptyImplCopyWith<$Res> {
  __$$SearchProcessStateSearchEmptyImplCopyWithImpl(
      _$SearchProcessStateSearchEmptyImpl _value,
      $Res Function(_$SearchProcessStateSearchEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchProcessStateSearchEmptyImpl
    implements _SearchProcessStateSearchEmpty {
  const _$SearchProcessStateSearchEmptyImpl();

  @override
  String toString() {
    return 'SearchProcessState.searchEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProcessStateSearchEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchLoading,
    required TResult Function() searchSuccess,
    required TResult Function() error,
    required TResult Function() searchEmpty,
    required TResult Function() initial,
  }) {
    return searchEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchLoading,
    TResult? Function()? searchSuccess,
    TResult? Function()? error,
    TResult? Function()? searchEmpty,
    TResult? Function()? initial,
  }) {
    return searchEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchLoading,
    TResult Function()? searchSuccess,
    TResult Function()? error,
    TResult Function()? searchEmpty,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (searchEmpty != null) {
      return searchEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProcessStateLoading value) searchLoading,
    required TResult Function(_SearchProcessStateSuccess value) searchSuccess,
    required TResult Function(_SearchProcessStateError value) error,
    required TResult Function(_SearchProcessStateSearchEmpty value) searchEmpty,
    required TResult Function(_SearchProcessStateInital value) initial,
  }) {
    return searchEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProcessStateLoading value)? searchLoading,
    TResult? Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult? Function(_SearchProcessStateError value)? error,
    TResult? Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult? Function(_SearchProcessStateInital value)? initial,
  }) {
    return searchEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProcessStateLoading value)? searchLoading,
    TResult Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult Function(_SearchProcessStateError value)? error,
    TResult Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult Function(_SearchProcessStateInital value)? initial,
    required TResult orElse(),
  }) {
    if (searchEmpty != null) {
      return searchEmpty(this);
    }
    return orElse();
  }
}

abstract class _SearchProcessStateSearchEmpty implements SearchProcessState {
  const factory _SearchProcessStateSearchEmpty() =
      _$SearchProcessStateSearchEmptyImpl;
}

/// @nodoc
abstract class _$$SearchProcessStateInitalImplCopyWith<$Res> {
  factory _$$SearchProcessStateInitalImplCopyWith(
          _$SearchProcessStateInitalImpl value,
          $Res Function(_$SearchProcessStateInitalImpl) then) =
      __$$SearchProcessStateInitalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchProcessStateInitalImplCopyWithImpl<$Res>
    extends _$SearchProcessStateCopyWithImpl<$Res,
        _$SearchProcessStateInitalImpl>
    implements _$$SearchProcessStateInitalImplCopyWith<$Res> {
  __$$SearchProcessStateInitalImplCopyWithImpl(
      _$SearchProcessStateInitalImpl _value,
      $Res Function(_$SearchProcessStateInitalImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchProcessStateInitalImpl implements _SearchProcessStateInital {
  const _$SearchProcessStateInitalImpl();

  @override
  String toString() {
    return 'SearchProcessState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProcessStateInitalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchLoading,
    required TResult Function() searchSuccess,
    required TResult Function() error,
    required TResult Function() searchEmpty,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchLoading,
    TResult? Function()? searchSuccess,
    TResult? Function()? error,
    TResult? Function()? searchEmpty,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchLoading,
    TResult Function()? searchSuccess,
    TResult Function()? error,
    TResult Function()? searchEmpty,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProcessStateLoading value) searchLoading,
    required TResult Function(_SearchProcessStateSuccess value) searchSuccess,
    required TResult Function(_SearchProcessStateError value) error,
    required TResult Function(_SearchProcessStateSearchEmpty value) searchEmpty,
    required TResult Function(_SearchProcessStateInital value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProcessStateLoading value)? searchLoading,
    TResult? Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult? Function(_SearchProcessStateError value)? error,
    TResult? Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult? Function(_SearchProcessStateInital value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProcessStateLoading value)? searchLoading,
    TResult Function(_SearchProcessStateSuccess value)? searchSuccess,
    TResult Function(_SearchProcessStateError value)? error,
    TResult Function(_SearchProcessStateSearchEmpty value)? searchEmpty,
    TResult Function(_SearchProcessStateInital value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchProcessStateInital implements SearchProcessState {
  const factory _SearchProcessStateInital() = _$SearchProcessStateInitalImpl;
}
