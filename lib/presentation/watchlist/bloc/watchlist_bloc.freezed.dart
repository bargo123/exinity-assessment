// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WatchlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWatchListProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWatchListProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWatchListProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWatchListProducts value) getWatchListProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWatchListProducts value)? getWatchListProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWatchListProducts value)? getWatchListProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistEventCopyWith<$Res> {
  factory $WatchlistEventCopyWith(
          WatchlistEvent value, $Res Function(WatchlistEvent) then) =
      _$WatchlistEventCopyWithImpl<$Res, WatchlistEvent>;
}

/// @nodoc
class _$WatchlistEventCopyWithImpl<$Res, $Val extends WatchlistEvent>
    implements $WatchlistEventCopyWith<$Res> {
  _$WatchlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WatchlistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetWatchListProductsImplCopyWith<$Res> {
  factory _$$GetWatchListProductsImplCopyWith(_$GetWatchListProductsImpl value,
          $Res Function(_$GetWatchListProductsImpl) then) =
      __$$GetWatchListProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWatchListProductsImplCopyWithImpl<$Res>
    extends _$WatchlistEventCopyWithImpl<$Res, _$GetWatchListProductsImpl>
    implements _$$GetWatchListProductsImplCopyWith<$Res> {
  __$$GetWatchListProductsImplCopyWithImpl(_$GetWatchListProductsImpl _value,
      $Res Function(_$GetWatchListProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchlistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetWatchListProductsImpl implements _GetWatchListProducts {
  const _$GetWatchListProductsImpl();

  @override
  String toString() {
    return 'WatchlistEvent.getWatchListProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWatchListProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWatchListProducts,
  }) {
    return getWatchListProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWatchListProducts,
  }) {
    return getWatchListProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWatchListProducts,
    required TResult orElse(),
  }) {
    if (getWatchListProducts != null) {
      return getWatchListProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWatchListProducts value) getWatchListProducts,
  }) {
    return getWatchListProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWatchListProducts value)? getWatchListProducts,
  }) {
    return getWatchListProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWatchListProducts value)? getWatchListProducts,
    required TResult orElse(),
  }) {
    if (getWatchListProducts != null) {
      return getWatchListProducts(this);
    }
    return orElse();
  }
}

abstract class _GetWatchListProducts implements WatchlistEvent {
  const factory _GetWatchListProducts() = _$GetWatchListProductsImpl;
}

/// @nodoc
mixin _$WatchlistState {
  List<WatchlistModel?> get watchlistData => throw _privateConstructorUsedError;
  WatchlistProcessState get watchlistProcessState =>
      throw _privateConstructorUsedError;

  /// Create a copy of WatchlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WatchlistStateCopyWith<WatchlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistStateCopyWith<$Res> {
  factory $WatchlistStateCopyWith(
          WatchlistState value, $Res Function(WatchlistState) then) =
      _$WatchlistStateCopyWithImpl<$Res, WatchlistState>;
  @useResult
  $Res call(
      {List<WatchlistModel?> watchlistData,
      WatchlistProcessState watchlistProcessState});

  $WatchlistProcessStateCopyWith<$Res> get watchlistProcessState;
}

/// @nodoc
class _$WatchlistStateCopyWithImpl<$Res, $Val extends WatchlistState>
    implements $WatchlistStateCopyWith<$Res> {
  _$WatchlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WatchlistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchlistData = null,
    Object? watchlistProcessState = null,
  }) {
    return _then(_value.copyWith(
      watchlistData: null == watchlistData
          ? _value.watchlistData
          : watchlistData // ignore: cast_nullable_to_non_nullable
              as List<WatchlistModel?>,
      watchlistProcessState: null == watchlistProcessState
          ? _value.watchlistProcessState
          : watchlistProcessState // ignore: cast_nullable_to_non_nullable
              as WatchlistProcessState,
    ) as $Val);
  }

  /// Create a copy of WatchlistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WatchlistProcessStateCopyWith<$Res> get watchlistProcessState {
    return $WatchlistProcessStateCopyWith<$Res>(_value.watchlistProcessState,
        (value) {
      return _then(_value.copyWith(watchlistProcessState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WatchlistStateImplCopyWith<$Res>
    implements $WatchlistStateCopyWith<$Res> {
  factory _$$WatchlistStateImplCopyWith(_$WatchlistStateImpl value,
          $Res Function(_$WatchlistStateImpl) then) =
      __$$WatchlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WatchlistModel?> watchlistData,
      WatchlistProcessState watchlistProcessState});

  @override
  $WatchlistProcessStateCopyWith<$Res> get watchlistProcessState;
}

/// @nodoc
class __$$WatchlistStateImplCopyWithImpl<$Res>
    extends _$WatchlistStateCopyWithImpl<$Res, _$WatchlistStateImpl>
    implements _$$WatchlistStateImplCopyWith<$Res> {
  __$$WatchlistStateImplCopyWithImpl(
      _$WatchlistStateImpl _value, $Res Function(_$WatchlistStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchlistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchlistData = null,
    Object? watchlistProcessState = null,
  }) {
    return _then(_$WatchlistStateImpl(
      watchlistData: null == watchlistData
          ? _value._watchlistData
          : watchlistData // ignore: cast_nullable_to_non_nullable
              as List<WatchlistModel?>,
      watchlistProcessState: null == watchlistProcessState
          ? _value.watchlistProcessState
          : watchlistProcessState // ignore: cast_nullable_to_non_nullable
              as WatchlistProcessState,
    ));
  }
}

/// @nodoc

class _$WatchlistStateImpl implements _WatchlistState {
  const _$WatchlistStateImpl(
      {final List<WatchlistModel?> watchlistData = const [],
      this.watchlistProcessState = const WatchlistProcessState.initial()})
      : _watchlistData = watchlistData;

  final List<WatchlistModel?> _watchlistData;
  @override
  @JsonKey()
  List<WatchlistModel?> get watchlistData {
    if (_watchlistData is EqualUnmodifiableListView) return _watchlistData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watchlistData);
  }

  @override
  @JsonKey()
  final WatchlistProcessState watchlistProcessState;

  @override
  String toString() {
    return 'WatchlistState(watchlistData: $watchlistData, watchlistProcessState: $watchlistProcessState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchlistStateImpl &&
            const DeepCollectionEquality()
                .equals(other._watchlistData, _watchlistData) &&
            (identical(other.watchlistProcessState, watchlistProcessState) ||
                other.watchlistProcessState == watchlistProcessState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_watchlistData),
      watchlistProcessState);

  /// Create a copy of WatchlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchlistStateImplCopyWith<_$WatchlistStateImpl> get copyWith =>
      __$$WatchlistStateImplCopyWithImpl<_$WatchlistStateImpl>(
          this, _$identity);
}

abstract class _WatchlistState implements WatchlistState {
  const factory _WatchlistState(
          {final List<WatchlistModel?> watchlistData,
          final WatchlistProcessState watchlistProcessState}) =
      _$WatchlistStateImpl;

  @override
  List<WatchlistModel?> get watchlistData;
  @override
  WatchlistProcessState get watchlistProcessState;

  /// Create a copy of WatchlistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchlistStateImplCopyWith<_$WatchlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WatchlistProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() watchlistFetched,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? watchlistFetched,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchlistFetched,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchlistProcessStateInital value) initial,
    required TResult Function(_WatchlistProcessStateSuccess value)
        watchlistFetched,
    required TResult Function(_WatchlistProcessStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchlistProcessStateInital value)? initial,
    TResult? Function(_WatchlistProcessStateSuccess value)? watchlistFetched,
    TResult? Function(_WatchlistProcessStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchlistProcessStateInital value)? initial,
    TResult Function(_WatchlistProcessStateSuccess value)? watchlistFetched,
    TResult Function(_WatchlistProcessStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistProcessStateCopyWith<$Res> {
  factory $WatchlistProcessStateCopyWith(WatchlistProcessState value,
          $Res Function(WatchlistProcessState) then) =
      _$WatchlistProcessStateCopyWithImpl<$Res, WatchlistProcessState>;
}

/// @nodoc
class _$WatchlistProcessStateCopyWithImpl<$Res,
        $Val extends WatchlistProcessState>
    implements $WatchlistProcessStateCopyWith<$Res> {
  _$WatchlistProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WatchlistProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WatchlistProcessStateInitalImplCopyWith<$Res> {
  factory _$$WatchlistProcessStateInitalImplCopyWith(
          _$WatchlistProcessStateInitalImpl value,
          $Res Function(_$WatchlistProcessStateInitalImpl) then) =
      __$$WatchlistProcessStateInitalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchlistProcessStateInitalImplCopyWithImpl<$Res>
    extends _$WatchlistProcessStateCopyWithImpl<$Res,
        _$WatchlistProcessStateInitalImpl>
    implements _$$WatchlistProcessStateInitalImplCopyWith<$Res> {
  __$$WatchlistProcessStateInitalImplCopyWithImpl(
      _$WatchlistProcessStateInitalImpl _value,
      $Res Function(_$WatchlistProcessStateInitalImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchlistProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WatchlistProcessStateInitalImpl
    implements _WatchlistProcessStateInital {
  const _$WatchlistProcessStateInitalImpl();

  @override
  String toString() {
    return 'WatchlistProcessState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchlistProcessStateInitalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() watchlistFetched,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? watchlistFetched,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchlistFetched,
    TResult Function()? error,
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
    required TResult Function(_WatchlistProcessStateInital value) initial,
    required TResult Function(_WatchlistProcessStateSuccess value)
        watchlistFetched,
    required TResult Function(_WatchlistProcessStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchlistProcessStateInital value)? initial,
    TResult? Function(_WatchlistProcessStateSuccess value)? watchlistFetched,
    TResult? Function(_WatchlistProcessStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchlistProcessStateInital value)? initial,
    TResult Function(_WatchlistProcessStateSuccess value)? watchlistFetched,
    TResult Function(_WatchlistProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WatchlistProcessStateInital implements WatchlistProcessState {
  const factory _WatchlistProcessStateInital() =
      _$WatchlistProcessStateInitalImpl;
}

/// @nodoc
abstract class _$$WatchlistProcessStateSuccessImplCopyWith<$Res> {
  factory _$$WatchlistProcessStateSuccessImplCopyWith(
          _$WatchlistProcessStateSuccessImpl value,
          $Res Function(_$WatchlistProcessStateSuccessImpl) then) =
      __$$WatchlistProcessStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchlistProcessStateSuccessImplCopyWithImpl<$Res>
    extends _$WatchlistProcessStateCopyWithImpl<$Res,
        _$WatchlistProcessStateSuccessImpl>
    implements _$$WatchlistProcessStateSuccessImplCopyWith<$Res> {
  __$$WatchlistProcessStateSuccessImplCopyWithImpl(
      _$WatchlistProcessStateSuccessImpl _value,
      $Res Function(_$WatchlistProcessStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchlistProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WatchlistProcessStateSuccessImpl
    implements _WatchlistProcessStateSuccess {
  const _$WatchlistProcessStateSuccessImpl();

  @override
  String toString() {
    return 'WatchlistProcessState.watchlistFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchlistProcessStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() watchlistFetched,
    required TResult Function() error,
  }) {
    return watchlistFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? watchlistFetched,
    TResult? Function()? error,
  }) {
    return watchlistFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchlistFetched,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (watchlistFetched != null) {
      return watchlistFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchlistProcessStateInital value) initial,
    required TResult Function(_WatchlistProcessStateSuccess value)
        watchlistFetched,
    required TResult Function(_WatchlistProcessStateError value) error,
  }) {
    return watchlistFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchlistProcessStateInital value)? initial,
    TResult? Function(_WatchlistProcessStateSuccess value)? watchlistFetched,
    TResult? Function(_WatchlistProcessStateError value)? error,
  }) {
    return watchlistFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchlistProcessStateInital value)? initial,
    TResult Function(_WatchlistProcessStateSuccess value)? watchlistFetched,
    TResult Function(_WatchlistProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (watchlistFetched != null) {
      return watchlistFetched(this);
    }
    return orElse();
  }
}

abstract class _WatchlistProcessStateSuccess implements WatchlistProcessState {
  const factory _WatchlistProcessStateSuccess() =
      _$WatchlistProcessStateSuccessImpl;
}

/// @nodoc
abstract class _$$WatchlistProcessStateErrorImplCopyWith<$Res> {
  factory _$$WatchlistProcessStateErrorImplCopyWith(
          _$WatchlistProcessStateErrorImpl value,
          $Res Function(_$WatchlistProcessStateErrorImpl) then) =
      __$$WatchlistProcessStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchlistProcessStateErrorImplCopyWithImpl<$Res>
    extends _$WatchlistProcessStateCopyWithImpl<$Res,
        _$WatchlistProcessStateErrorImpl>
    implements _$$WatchlistProcessStateErrorImplCopyWith<$Res> {
  __$$WatchlistProcessStateErrorImplCopyWithImpl(
      _$WatchlistProcessStateErrorImpl _value,
      $Res Function(_$WatchlistProcessStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchlistProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WatchlistProcessStateErrorImpl implements _WatchlistProcessStateError {
  const _$WatchlistProcessStateErrorImpl();

  @override
  String toString() {
    return 'WatchlistProcessState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchlistProcessStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() watchlistFetched,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? watchlistFetched,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchlistFetched,
    TResult Function()? error,
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
    required TResult Function(_WatchlistProcessStateInital value) initial,
    required TResult Function(_WatchlistProcessStateSuccess value)
        watchlistFetched,
    required TResult Function(_WatchlistProcessStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchlistProcessStateInital value)? initial,
    TResult? Function(_WatchlistProcessStateSuccess value)? watchlistFetched,
    TResult? Function(_WatchlistProcessStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchlistProcessStateInital value)? initial,
    TResult Function(_WatchlistProcessStateSuccess value)? watchlistFetched,
    TResult Function(_WatchlistProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WatchlistProcessStateError implements WatchlistProcessState {
  const factory _WatchlistProcessStateError() =
      _$WatchlistProcessStateErrorImpl;
}
