// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'markets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarketsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMarketProducts,
    required TResult Function() onGetProductsPrices,
    required TResult Function(Map<String, SymbolPriceModel> symbolPrices)
        onSendPricesData,
    required TResult Function(int groupIndex) onChangeGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMarketProducts,
    TResult? Function()? onGetProductsPrices,
    TResult? Function(Map<String, SymbolPriceModel> symbolPrices)?
        onSendPricesData,
    TResult? Function(int groupIndex)? onChangeGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMarketProducts,
    TResult Function()? onGetProductsPrices,
    TResult Function(Map<String, SymbolPriceModel> symbolPrices)?
        onSendPricesData,
    TResult Function(int groupIndex)? onChangeGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetMarketProducts value) onGetMarketProducts,
    required TResult Function(_OnGetProductsPrices value) onGetProductsPrices,
    required TResult Function(_OnSendPricesData value) onSendPricesData,
    required TResult Function(_OnChangeGroup value) onChangeGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetMarketProducts value)? onGetMarketProducts,
    TResult? Function(_OnGetProductsPrices value)? onGetProductsPrices,
    TResult? Function(_OnSendPricesData value)? onSendPricesData,
    TResult? Function(_OnChangeGroup value)? onChangeGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetMarketProducts value)? onGetMarketProducts,
    TResult Function(_OnGetProductsPrices value)? onGetProductsPrices,
    TResult Function(_OnSendPricesData value)? onSendPricesData,
    TResult Function(_OnChangeGroup value)? onChangeGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketsEventCopyWith<$Res> {
  factory $MarketsEventCopyWith(
          MarketsEvent value, $Res Function(MarketsEvent) then) =
      _$MarketsEventCopyWithImpl<$Res, MarketsEvent>;
}

/// @nodoc
class _$MarketsEventCopyWithImpl<$Res, $Val extends MarketsEvent>
    implements $MarketsEventCopyWith<$Res> {
  _$MarketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnGetMarketProductsImplCopyWith<$Res> {
  factory _$$OnGetMarketProductsImplCopyWith(_$OnGetMarketProductsImpl value,
          $Res Function(_$OnGetMarketProductsImpl) then) =
      __$$OnGetMarketProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetMarketProductsImplCopyWithImpl<$Res>
    extends _$MarketsEventCopyWithImpl<$Res, _$OnGetMarketProductsImpl>
    implements _$$OnGetMarketProductsImplCopyWith<$Res> {
  __$$OnGetMarketProductsImplCopyWithImpl(_$OnGetMarketProductsImpl _value,
      $Res Function(_$OnGetMarketProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnGetMarketProductsImpl implements _OnGetMarketProducts {
  const _$OnGetMarketProductsImpl();

  @override
  String toString() {
    return 'MarketsEvent.onGetMarketProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetMarketProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMarketProducts,
    required TResult Function() onGetProductsPrices,
    required TResult Function(Map<String, SymbolPriceModel> symbolPrices)
        onSendPricesData,
    required TResult Function(int groupIndex) onChangeGroup,
  }) {
    return onGetMarketProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMarketProducts,
    TResult? Function()? onGetProductsPrices,
    TResult? Function(Map<String, SymbolPriceModel> symbolPrices)?
        onSendPricesData,
    TResult? Function(int groupIndex)? onChangeGroup,
  }) {
    return onGetMarketProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMarketProducts,
    TResult Function()? onGetProductsPrices,
    TResult Function(Map<String, SymbolPriceModel> symbolPrices)?
        onSendPricesData,
    TResult Function(int groupIndex)? onChangeGroup,
    required TResult orElse(),
  }) {
    if (onGetMarketProducts != null) {
      return onGetMarketProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetMarketProducts value) onGetMarketProducts,
    required TResult Function(_OnGetProductsPrices value) onGetProductsPrices,
    required TResult Function(_OnSendPricesData value) onSendPricesData,
    required TResult Function(_OnChangeGroup value) onChangeGroup,
  }) {
    return onGetMarketProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetMarketProducts value)? onGetMarketProducts,
    TResult? Function(_OnGetProductsPrices value)? onGetProductsPrices,
    TResult? Function(_OnSendPricesData value)? onSendPricesData,
    TResult? Function(_OnChangeGroup value)? onChangeGroup,
  }) {
    return onGetMarketProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetMarketProducts value)? onGetMarketProducts,
    TResult Function(_OnGetProductsPrices value)? onGetProductsPrices,
    TResult Function(_OnSendPricesData value)? onSendPricesData,
    TResult Function(_OnChangeGroup value)? onChangeGroup,
    required TResult orElse(),
  }) {
    if (onGetMarketProducts != null) {
      return onGetMarketProducts(this);
    }
    return orElse();
  }
}

abstract class _OnGetMarketProducts implements MarketsEvent {
  const factory _OnGetMarketProducts() = _$OnGetMarketProductsImpl;
}

/// @nodoc
abstract class _$$OnGetProductsPricesImplCopyWith<$Res> {
  factory _$$OnGetProductsPricesImplCopyWith(_$OnGetProductsPricesImpl value,
          $Res Function(_$OnGetProductsPricesImpl) then) =
      __$$OnGetProductsPricesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetProductsPricesImplCopyWithImpl<$Res>
    extends _$MarketsEventCopyWithImpl<$Res, _$OnGetProductsPricesImpl>
    implements _$$OnGetProductsPricesImplCopyWith<$Res> {
  __$$OnGetProductsPricesImplCopyWithImpl(_$OnGetProductsPricesImpl _value,
      $Res Function(_$OnGetProductsPricesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnGetProductsPricesImpl implements _OnGetProductsPrices {
  const _$OnGetProductsPricesImpl();

  @override
  String toString() {
    return 'MarketsEvent.onGetProductsPrices()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetProductsPricesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMarketProducts,
    required TResult Function() onGetProductsPrices,
    required TResult Function(Map<String, SymbolPriceModel> symbolPrices)
        onSendPricesData,
    required TResult Function(int groupIndex) onChangeGroup,
  }) {
    return onGetProductsPrices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMarketProducts,
    TResult? Function()? onGetProductsPrices,
    TResult? Function(Map<String, SymbolPriceModel> symbolPrices)?
        onSendPricesData,
    TResult? Function(int groupIndex)? onChangeGroup,
  }) {
    return onGetProductsPrices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMarketProducts,
    TResult Function()? onGetProductsPrices,
    TResult Function(Map<String, SymbolPriceModel> symbolPrices)?
        onSendPricesData,
    TResult Function(int groupIndex)? onChangeGroup,
    required TResult orElse(),
  }) {
    if (onGetProductsPrices != null) {
      return onGetProductsPrices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetMarketProducts value) onGetMarketProducts,
    required TResult Function(_OnGetProductsPrices value) onGetProductsPrices,
    required TResult Function(_OnSendPricesData value) onSendPricesData,
    required TResult Function(_OnChangeGroup value) onChangeGroup,
  }) {
    return onGetProductsPrices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetMarketProducts value)? onGetMarketProducts,
    TResult? Function(_OnGetProductsPrices value)? onGetProductsPrices,
    TResult? Function(_OnSendPricesData value)? onSendPricesData,
    TResult? Function(_OnChangeGroup value)? onChangeGroup,
  }) {
    return onGetProductsPrices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetMarketProducts value)? onGetMarketProducts,
    TResult Function(_OnGetProductsPrices value)? onGetProductsPrices,
    TResult Function(_OnSendPricesData value)? onSendPricesData,
    TResult Function(_OnChangeGroup value)? onChangeGroup,
    required TResult orElse(),
  }) {
    if (onGetProductsPrices != null) {
      return onGetProductsPrices(this);
    }
    return orElse();
  }
}

abstract class _OnGetProductsPrices implements MarketsEvent {
  const factory _OnGetProductsPrices() = _$OnGetProductsPricesImpl;
}

/// @nodoc
abstract class _$$OnSendPricesDataImplCopyWith<$Res> {
  factory _$$OnSendPricesDataImplCopyWith(_$OnSendPricesDataImpl value,
          $Res Function(_$OnSendPricesDataImpl) then) =
      __$$OnSendPricesDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, SymbolPriceModel> symbolPrices});
}

/// @nodoc
class __$$OnSendPricesDataImplCopyWithImpl<$Res>
    extends _$MarketsEventCopyWithImpl<$Res, _$OnSendPricesDataImpl>
    implements _$$OnSendPricesDataImplCopyWith<$Res> {
  __$$OnSendPricesDataImplCopyWithImpl(_$OnSendPricesDataImpl _value,
      $Res Function(_$OnSendPricesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbolPrices = null,
  }) {
    return _then(_$OnSendPricesDataImpl(
      symbolPrices: null == symbolPrices
          ? _value._symbolPrices
          : symbolPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, SymbolPriceModel>,
    ));
  }
}

/// @nodoc

class _$OnSendPricesDataImpl implements _OnSendPricesData {
  const _$OnSendPricesDataImpl(
      {required final Map<String, SymbolPriceModel> symbolPrices})
      : _symbolPrices = symbolPrices;

  final Map<String, SymbolPriceModel> _symbolPrices;
  @override
  Map<String, SymbolPriceModel> get symbolPrices {
    if (_symbolPrices is EqualUnmodifiableMapView) return _symbolPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_symbolPrices);
  }

  @override
  String toString() {
    return 'MarketsEvent.onSendPricesData(symbolPrices: $symbolPrices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSendPricesDataImpl &&
            const DeepCollectionEquality()
                .equals(other._symbolPrices, _symbolPrices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_symbolPrices));

  /// Create a copy of MarketsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSendPricesDataImplCopyWith<_$OnSendPricesDataImpl> get copyWith =>
      __$$OnSendPricesDataImplCopyWithImpl<_$OnSendPricesDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMarketProducts,
    required TResult Function() onGetProductsPrices,
    required TResult Function(Map<String, SymbolPriceModel> symbolPrices)
        onSendPricesData,
    required TResult Function(int groupIndex) onChangeGroup,
  }) {
    return onSendPricesData(symbolPrices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMarketProducts,
    TResult? Function()? onGetProductsPrices,
    TResult? Function(Map<String, SymbolPriceModel> symbolPrices)?
        onSendPricesData,
    TResult? Function(int groupIndex)? onChangeGroup,
  }) {
    return onSendPricesData?.call(symbolPrices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMarketProducts,
    TResult Function()? onGetProductsPrices,
    TResult Function(Map<String, SymbolPriceModel> symbolPrices)?
        onSendPricesData,
    TResult Function(int groupIndex)? onChangeGroup,
    required TResult orElse(),
  }) {
    if (onSendPricesData != null) {
      return onSendPricesData(symbolPrices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetMarketProducts value) onGetMarketProducts,
    required TResult Function(_OnGetProductsPrices value) onGetProductsPrices,
    required TResult Function(_OnSendPricesData value) onSendPricesData,
    required TResult Function(_OnChangeGroup value) onChangeGroup,
  }) {
    return onSendPricesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetMarketProducts value)? onGetMarketProducts,
    TResult? Function(_OnGetProductsPrices value)? onGetProductsPrices,
    TResult? Function(_OnSendPricesData value)? onSendPricesData,
    TResult? Function(_OnChangeGroup value)? onChangeGroup,
  }) {
    return onSendPricesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetMarketProducts value)? onGetMarketProducts,
    TResult Function(_OnGetProductsPrices value)? onGetProductsPrices,
    TResult Function(_OnSendPricesData value)? onSendPricesData,
    TResult Function(_OnChangeGroup value)? onChangeGroup,
    required TResult orElse(),
  }) {
    if (onSendPricesData != null) {
      return onSendPricesData(this);
    }
    return orElse();
  }
}

abstract class _OnSendPricesData implements MarketsEvent {
  const factory _OnSendPricesData(
          {required final Map<String, SymbolPriceModel> symbolPrices}) =
      _$OnSendPricesDataImpl;

  Map<String, SymbolPriceModel> get symbolPrices;

  /// Create a copy of MarketsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSendPricesDataImplCopyWith<_$OnSendPricesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnChangeGroupImplCopyWith<$Res> {
  factory _$$OnChangeGroupImplCopyWith(
          _$OnChangeGroupImpl value, $Res Function(_$OnChangeGroupImpl) then) =
      __$$OnChangeGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int groupIndex});
}

/// @nodoc
class __$$OnChangeGroupImplCopyWithImpl<$Res>
    extends _$MarketsEventCopyWithImpl<$Res, _$OnChangeGroupImpl>
    implements _$$OnChangeGroupImplCopyWith<$Res> {
  __$$OnChangeGroupImplCopyWithImpl(
      _$OnChangeGroupImpl _value, $Res Function(_$OnChangeGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupIndex = null,
  }) {
    return _then(_$OnChangeGroupImpl(
      null == groupIndex
          ? _value.groupIndex
          : groupIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnChangeGroupImpl implements _OnChangeGroup {
  const _$OnChangeGroupImpl(this.groupIndex);

  @override
  final int groupIndex;

  @override
  String toString() {
    return 'MarketsEvent.onChangeGroup(groupIndex: $groupIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeGroupImpl &&
            (identical(other.groupIndex, groupIndex) ||
                other.groupIndex == groupIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupIndex);

  /// Create a copy of MarketsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeGroupImplCopyWith<_$OnChangeGroupImpl> get copyWith =>
      __$$OnChangeGroupImplCopyWithImpl<_$OnChangeGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMarketProducts,
    required TResult Function() onGetProductsPrices,
    required TResult Function(Map<String, SymbolPriceModel> symbolPrices)
        onSendPricesData,
    required TResult Function(int groupIndex) onChangeGroup,
  }) {
    return onChangeGroup(groupIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMarketProducts,
    TResult? Function()? onGetProductsPrices,
    TResult? Function(Map<String, SymbolPriceModel> symbolPrices)?
        onSendPricesData,
    TResult? Function(int groupIndex)? onChangeGroup,
  }) {
    return onChangeGroup?.call(groupIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMarketProducts,
    TResult Function()? onGetProductsPrices,
    TResult Function(Map<String, SymbolPriceModel> symbolPrices)?
        onSendPricesData,
    TResult Function(int groupIndex)? onChangeGroup,
    required TResult orElse(),
  }) {
    if (onChangeGroup != null) {
      return onChangeGroup(groupIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetMarketProducts value) onGetMarketProducts,
    required TResult Function(_OnGetProductsPrices value) onGetProductsPrices,
    required TResult Function(_OnSendPricesData value) onSendPricesData,
    required TResult Function(_OnChangeGroup value) onChangeGroup,
  }) {
    return onChangeGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetMarketProducts value)? onGetMarketProducts,
    TResult? Function(_OnGetProductsPrices value)? onGetProductsPrices,
    TResult? Function(_OnSendPricesData value)? onSendPricesData,
    TResult? Function(_OnChangeGroup value)? onChangeGroup,
  }) {
    return onChangeGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetMarketProducts value)? onGetMarketProducts,
    TResult Function(_OnGetProductsPrices value)? onGetProductsPrices,
    TResult Function(_OnSendPricesData value)? onSendPricesData,
    TResult Function(_OnChangeGroup value)? onChangeGroup,
    required TResult orElse(),
  }) {
    if (onChangeGroup != null) {
      return onChangeGroup(this);
    }
    return orElse();
  }
}

abstract class _OnChangeGroup implements MarketsEvent {
  const factory _OnChangeGroup(final int groupIndex) = _$OnChangeGroupImpl;

  int get groupIndex;

  /// Create a copy of MarketsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChangeGroupImplCopyWith<_$OnChangeGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarketsState {
  MarketProcessState get marketProcessState =>
      throw _privateConstructorUsedError;
  Map<String, SymbolPriceModel> get symbolPrices =>
      throw _privateConstructorUsedError;
  int get currentGroup => throw _privateConstructorUsedError;
  List<SymbolModel> get displayedSymbols => throw _privateConstructorUsedError;
  List<SymbolModel> get allSymbols => throw _privateConstructorUsedError;

  /// Create a copy of MarketsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketsStateCopyWith<MarketsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketsStateCopyWith<$Res> {
  factory $MarketsStateCopyWith(
          MarketsState value, $Res Function(MarketsState) then) =
      _$MarketsStateCopyWithImpl<$Res, MarketsState>;
  @useResult
  $Res call(
      {MarketProcessState marketProcessState,
      Map<String, SymbolPriceModel> symbolPrices,
      int currentGroup,
      List<SymbolModel> displayedSymbols,
      List<SymbolModel> allSymbols});

  $MarketProcessStateCopyWith<$Res> get marketProcessState;
}

/// @nodoc
class _$MarketsStateCopyWithImpl<$Res, $Val extends MarketsState>
    implements $MarketsStateCopyWith<$Res> {
  _$MarketsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketProcessState = null,
    Object? symbolPrices = null,
    Object? currentGroup = null,
    Object? displayedSymbols = null,
    Object? allSymbols = null,
  }) {
    return _then(_value.copyWith(
      marketProcessState: null == marketProcessState
          ? _value.marketProcessState
          : marketProcessState // ignore: cast_nullable_to_non_nullable
              as MarketProcessState,
      symbolPrices: null == symbolPrices
          ? _value.symbolPrices
          : symbolPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, SymbolPriceModel>,
      currentGroup: null == currentGroup
          ? _value.currentGroup
          : currentGroup // ignore: cast_nullable_to_non_nullable
              as int,
      displayedSymbols: null == displayedSymbols
          ? _value.displayedSymbols
          : displayedSymbols // ignore: cast_nullable_to_non_nullable
              as List<SymbolModel>,
      allSymbols: null == allSymbols
          ? _value.allSymbols
          : allSymbols // ignore: cast_nullable_to_non_nullable
              as List<SymbolModel>,
    ) as $Val);
  }

  /// Create a copy of MarketsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MarketProcessStateCopyWith<$Res> get marketProcessState {
    return $MarketProcessStateCopyWith<$Res>(_value.marketProcessState,
        (value) {
      return _then(_value.copyWith(marketProcessState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarketsStateImplCopyWith<$Res>
    implements $MarketsStateCopyWith<$Res> {
  factory _$$MarketsStateImplCopyWith(
          _$MarketsStateImpl value, $Res Function(_$MarketsStateImpl) then) =
      __$$MarketsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MarketProcessState marketProcessState,
      Map<String, SymbolPriceModel> symbolPrices,
      int currentGroup,
      List<SymbolModel> displayedSymbols,
      List<SymbolModel> allSymbols});

  @override
  $MarketProcessStateCopyWith<$Res> get marketProcessState;
}

/// @nodoc
class __$$MarketsStateImplCopyWithImpl<$Res>
    extends _$MarketsStateCopyWithImpl<$Res, _$MarketsStateImpl>
    implements _$$MarketsStateImplCopyWith<$Res> {
  __$$MarketsStateImplCopyWithImpl(
      _$MarketsStateImpl _value, $Res Function(_$MarketsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketProcessState = null,
    Object? symbolPrices = null,
    Object? currentGroup = null,
    Object? displayedSymbols = null,
    Object? allSymbols = null,
  }) {
    return _then(_$MarketsStateImpl(
      marketProcessState: null == marketProcessState
          ? _value.marketProcessState
          : marketProcessState // ignore: cast_nullable_to_non_nullable
              as MarketProcessState,
      symbolPrices: null == symbolPrices
          ? _value._symbolPrices
          : symbolPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, SymbolPriceModel>,
      currentGroup: null == currentGroup
          ? _value.currentGroup
          : currentGroup // ignore: cast_nullable_to_non_nullable
              as int,
      displayedSymbols: null == displayedSymbols
          ? _value._displayedSymbols
          : displayedSymbols // ignore: cast_nullable_to_non_nullable
              as List<SymbolModel>,
      allSymbols: null == allSymbols
          ? _value._allSymbols
          : allSymbols // ignore: cast_nullable_to_non_nullable
              as List<SymbolModel>,
    ));
  }
}

/// @nodoc

class _$MarketsStateImpl implements _MarketsState {
  const _$MarketsStateImpl(
      {this.marketProcessState = const MarketProcessState.loading(),
      final Map<String, SymbolPriceModel> symbolPrices = const {},
      this.currentGroup = 0,
      final List<SymbolModel> displayedSymbols = const [],
      final List<SymbolModel> allSymbols = const []})
      : _symbolPrices = symbolPrices,
        _displayedSymbols = displayedSymbols,
        _allSymbols = allSymbols;

  @override
  @JsonKey()
  final MarketProcessState marketProcessState;
  final Map<String, SymbolPriceModel> _symbolPrices;
  @override
  @JsonKey()
  Map<String, SymbolPriceModel> get symbolPrices {
    if (_symbolPrices is EqualUnmodifiableMapView) return _symbolPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_symbolPrices);
  }

  @override
  @JsonKey()
  final int currentGroup;
  final List<SymbolModel> _displayedSymbols;
  @override
  @JsonKey()
  List<SymbolModel> get displayedSymbols {
    if (_displayedSymbols is EqualUnmodifiableListView)
      return _displayedSymbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displayedSymbols);
  }

  final List<SymbolModel> _allSymbols;
  @override
  @JsonKey()
  List<SymbolModel> get allSymbols {
    if (_allSymbols is EqualUnmodifiableListView) return _allSymbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allSymbols);
  }

  @override
  String toString() {
    return 'MarketsState(marketProcessState: $marketProcessState, symbolPrices: $symbolPrices, currentGroup: $currentGroup, displayedSymbols: $displayedSymbols, allSymbols: $allSymbols)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketsStateImpl &&
            (identical(other.marketProcessState, marketProcessState) ||
                other.marketProcessState == marketProcessState) &&
            const DeepCollectionEquality()
                .equals(other._symbolPrices, _symbolPrices) &&
            (identical(other.currentGroup, currentGroup) ||
                other.currentGroup == currentGroup) &&
            const DeepCollectionEquality()
                .equals(other._displayedSymbols, _displayedSymbols) &&
            const DeepCollectionEquality()
                .equals(other._allSymbols, _allSymbols));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      marketProcessState,
      const DeepCollectionEquality().hash(_symbolPrices),
      currentGroup,
      const DeepCollectionEquality().hash(_displayedSymbols),
      const DeepCollectionEquality().hash(_allSymbols));

  /// Create a copy of MarketsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketsStateImplCopyWith<_$MarketsStateImpl> get copyWith =>
      __$$MarketsStateImplCopyWithImpl<_$MarketsStateImpl>(this, _$identity);
}

abstract class _MarketsState implements MarketsState {
  const factory _MarketsState(
      {final MarketProcessState marketProcessState,
      final Map<String, SymbolPriceModel> symbolPrices,
      final int currentGroup,
      final List<SymbolModel> displayedSymbols,
      final List<SymbolModel> allSymbols}) = _$MarketsStateImpl;

  @override
  MarketProcessState get marketProcessState;
  @override
  Map<String, SymbolPriceModel> get symbolPrices;
  @override
  int get currentGroup;
  @override
  List<SymbolModel> get displayedSymbols;
  @override
  List<SymbolModel> get allSymbols;

  /// Create a copy of MarketsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketsStateImplCopyWith<_$MarketsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarketProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarketProcessStateLoading value) loading,
    required TResult Function(_MarketProcessStateSuccess value) success,
    required TResult Function(_MarketProcessStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MarketProcessStateLoading value)? loading,
    TResult? Function(_MarketProcessStateSuccess value)? success,
    TResult? Function(_MarketProcessStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarketProcessStateLoading value)? loading,
    TResult Function(_MarketProcessStateSuccess value)? success,
    TResult Function(_MarketProcessStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketProcessStateCopyWith<$Res> {
  factory $MarketProcessStateCopyWith(
          MarketProcessState value, $Res Function(MarketProcessState) then) =
      _$MarketProcessStateCopyWithImpl<$Res, MarketProcessState>;
}

/// @nodoc
class _$MarketProcessStateCopyWithImpl<$Res, $Val extends MarketProcessState>
    implements $MarketProcessStateCopyWith<$Res> {
  _$MarketProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MarketProcessStateLoadingImplCopyWith<$Res> {
  factory _$$MarketProcessStateLoadingImplCopyWith(
          _$MarketProcessStateLoadingImpl value,
          $Res Function(_$MarketProcessStateLoadingImpl) then) =
      __$$MarketProcessStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarketProcessStateLoadingImplCopyWithImpl<$Res>
    extends _$MarketProcessStateCopyWithImpl<$Res,
        _$MarketProcessStateLoadingImpl>
    implements _$$MarketProcessStateLoadingImplCopyWith<$Res> {
  __$$MarketProcessStateLoadingImplCopyWithImpl(
      _$MarketProcessStateLoadingImpl _value,
      $Res Function(_$MarketProcessStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MarketProcessStateLoadingImpl implements _MarketProcessStateLoading {
  const _$MarketProcessStateLoadingImpl();

  @override
  String toString() {
    return 'MarketProcessState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketProcessStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarketProcessStateLoading value) loading,
    required TResult Function(_MarketProcessStateSuccess value) success,
    required TResult Function(_MarketProcessStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MarketProcessStateLoading value)? loading,
    TResult? Function(_MarketProcessStateSuccess value)? success,
    TResult? Function(_MarketProcessStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarketProcessStateLoading value)? loading,
    TResult Function(_MarketProcessStateSuccess value)? success,
    TResult Function(_MarketProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MarketProcessStateLoading implements MarketProcessState {
  const factory _MarketProcessStateLoading() = _$MarketProcessStateLoadingImpl;
}

/// @nodoc
abstract class _$$MarketProcessStateSuccessImplCopyWith<$Res> {
  factory _$$MarketProcessStateSuccessImplCopyWith(
          _$MarketProcessStateSuccessImpl value,
          $Res Function(_$MarketProcessStateSuccessImpl) then) =
      __$$MarketProcessStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarketProcessStateSuccessImplCopyWithImpl<$Res>
    extends _$MarketProcessStateCopyWithImpl<$Res,
        _$MarketProcessStateSuccessImpl>
    implements _$$MarketProcessStateSuccessImplCopyWith<$Res> {
  __$$MarketProcessStateSuccessImplCopyWithImpl(
      _$MarketProcessStateSuccessImpl _value,
      $Res Function(_$MarketProcessStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MarketProcessStateSuccessImpl implements _MarketProcessStateSuccess {
  const _$MarketProcessStateSuccessImpl();

  @override
  String toString() {
    return 'MarketProcessState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketProcessStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarketProcessStateLoading value) loading,
    required TResult Function(_MarketProcessStateSuccess value) success,
    required TResult Function(_MarketProcessStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MarketProcessStateLoading value)? loading,
    TResult? Function(_MarketProcessStateSuccess value)? success,
    TResult? Function(_MarketProcessStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarketProcessStateLoading value)? loading,
    TResult Function(_MarketProcessStateSuccess value)? success,
    TResult Function(_MarketProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _MarketProcessStateSuccess implements MarketProcessState {
  const factory _MarketProcessStateSuccess() = _$MarketProcessStateSuccessImpl;
}

/// @nodoc
abstract class _$$MarketProcessStateErrorImplCopyWith<$Res> {
  factory _$$MarketProcessStateErrorImplCopyWith(
          _$MarketProcessStateErrorImpl value,
          $Res Function(_$MarketProcessStateErrorImpl) then) =
      __$$MarketProcessStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarketProcessStateErrorImplCopyWithImpl<$Res>
    extends _$MarketProcessStateCopyWithImpl<$Res,
        _$MarketProcessStateErrorImpl>
    implements _$$MarketProcessStateErrorImplCopyWith<$Res> {
  __$$MarketProcessStateErrorImplCopyWithImpl(
      _$MarketProcessStateErrorImpl _value,
      $Res Function(_$MarketProcessStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MarketProcessStateErrorImpl implements _MarketProcessStateError {
  const _$MarketProcessStateErrorImpl();

  @override
  String toString() {
    return 'MarketProcessState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketProcessStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_MarketProcessStateLoading value) loading,
    required TResult Function(_MarketProcessStateSuccess value) success,
    required TResult Function(_MarketProcessStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MarketProcessStateLoading value)? loading,
    TResult? Function(_MarketProcessStateSuccess value)? success,
    TResult? Function(_MarketProcessStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarketProcessStateLoading value)? loading,
    TResult Function(_MarketProcessStateSuccess value)? success,
    TResult Function(_MarketProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MarketProcessStateError implements MarketProcessState {
  const factory _MarketProcessStateError() = _$MarketProcessStateErrorImpl;
}
