// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symbol_pricing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SymbolPricingModel _$SymbolPricingModelFromJson(Map<String, dynamic> json) {
  return _TradeResponse.fromJson(json);
}

/// @nodoc
mixin _$SymbolPricingModel {
  List<SymbolData> get data => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this SymbolPricingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymbolPricingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymbolPricingModelCopyWith<SymbolPricingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymbolPricingModelCopyWith<$Res> {
  factory $SymbolPricingModelCopyWith(
          SymbolPricingModel value, $Res Function(SymbolPricingModel) then) =
      _$SymbolPricingModelCopyWithImpl<$Res, SymbolPricingModel>;
  @useResult
  $Res call({List<SymbolData> data, String? type});
}

/// @nodoc
class _$SymbolPricingModelCopyWithImpl<$Res, $Val extends SymbolPricingModel>
    implements $SymbolPricingModelCopyWith<$Res> {
  _$SymbolPricingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymbolPricingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SymbolData>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeResponseImplCopyWith<$Res>
    implements $SymbolPricingModelCopyWith<$Res> {
  factory _$$TradeResponseImplCopyWith(
          _$TradeResponseImpl value, $Res Function(_$TradeResponseImpl) then) =
      __$$TradeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SymbolData> data, String? type});
}

/// @nodoc
class __$$TradeResponseImplCopyWithImpl<$Res>
    extends _$SymbolPricingModelCopyWithImpl<$Res, _$TradeResponseImpl>
    implements _$$TradeResponseImplCopyWith<$Res> {
  __$$TradeResponseImplCopyWithImpl(
      _$TradeResponseImpl _value, $Res Function(_$TradeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymbolPricingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = freezed,
  }) {
    return _then(_$TradeResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SymbolData>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeResponseImpl implements _TradeResponse {
  const _$TradeResponseImpl({required final List<SymbolData> data, this.type})
      : _data = data;

  factory _$TradeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeResponseImplFromJson(json);

  final List<SymbolData> _data;
  @override
  List<SymbolData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? type;

  @override
  String toString() {
    return 'SymbolPricingModel(data: $data, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), type);

  /// Create a copy of SymbolPricingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeResponseImplCopyWith<_$TradeResponseImpl> get copyWith =>
      __$$TradeResponseImplCopyWithImpl<_$TradeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeResponseImplToJson(
      this,
    );
  }
}

abstract class _TradeResponse implements SymbolPricingModel {
  const factory _TradeResponse(
      {required final List<SymbolData> data,
      final String? type}) = _$TradeResponseImpl;

  factory _TradeResponse.fromJson(Map<String, dynamic> json) =
      _$TradeResponseImpl.fromJson;

  @override
  List<SymbolData> get data;
  @override
  String? get type;

  /// Create a copy of SymbolPricingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeResponseImplCopyWith<_$TradeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SymbolData _$SymbolDataFromJson(Map<String, dynamic> json) {
  return _SymbolData.fromJson(json);
}

/// @nodoc
mixin _$SymbolData {
  double? get c => throw _privateConstructorUsedError;
  double get p => throw _privateConstructorUsedError;
  String get s => throw _privateConstructorUsedError;
  int get t => throw _privateConstructorUsedError;
  int get v => throw _privateConstructorUsedError;

  /// Serializes this SymbolData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymbolData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymbolDataCopyWith<SymbolData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymbolDataCopyWith<$Res> {
  factory $SymbolDataCopyWith(
          SymbolData value, $Res Function(SymbolData) then) =
      _$SymbolDataCopyWithImpl<$Res, SymbolData>;
  @useResult
  $Res call({double? c, double p, String s, int t, int v});
}

/// @nodoc
class _$SymbolDataCopyWithImpl<$Res, $Val extends SymbolData>
    implements $SymbolDataCopyWith<$Res> {
  _$SymbolDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymbolData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? c = freezed,
    Object? p = null,
    Object? s = null,
    Object? t = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      c: freezed == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as double?,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as double,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as int,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymbolDataImplCopyWith<$Res>
    implements $SymbolDataCopyWith<$Res> {
  factory _$$SymbolDataImplCopyWith(
          _$SymbolDataImpl value, $Res Function(_$SymbolDataImpl) then) =
      __$$SymbolDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? c, double p, String s, int t, int v});
}

/// @nodoc
class __$$SymbolDataImplCopyWithImpl<$Res>
    extends _$SymbolDataCopyWithImpl<$Res, _$SymbolDataImpl>
    implements _$$SymbolDataImplCopyWith<$Res> {
  __$$SymbolDataImplCopyWithImpl(
      _$SymbolDataImpl _value, $Res Function(_$SymbolDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymbolData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? c = freezed,
    Object? p = null,
    Object? s = null,
    Object? t = null,
    Object? v = null,
  }) {
    return _then(_$SymbolDataImpl(
      c: freezed == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as double?,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as double,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as int,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymbolDataImpl implements _SymbolData {
  const _$SymbolDataImpl(
      {this.c,
      required this.p,
      required this.s,
      required this.t,
      required this.v});

  factory _$SymbolDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymbolDataImplFromJson(json);

  @override
  final double? c;
  @override
  final double p;
  @override
  final String s;
  @override
  final int t;
  @override
  final int v;

  @override
  String toString() {
    return 'SymbolData(c: $c, p: $p, s: $s, t: $t, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymbolDataImpl &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.p, p) || other.p == p) &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.t, t) || other.t == t) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, c, p, s, t, v);

  /// Create a copy of SymbolData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymbolDataImplCopyWith<_$SymbolDataImpl> get copyWith =>
      __$$SymbolDataImplCopyWithImpl<_$SymbolDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymbolDataImplToJson(
      this,
    );
  }
}

abstract class _SymbolData implements SymbolData {
  const factory _SymbolData(
      {final double? c,
      required final double p,
      required final String s,
      required final int t,
      required final int v}) = _$SymbolDataImpl;

  factory _SymbolData.fromJson(Map<String, dynamic> json) =
      _$SymbolDataImpl.fromJson;

  @override
  double? get c;
  @override
  double get p;
  @override
  String get s;
  @override
  int get t;
  @override
  int get v;

  /// Create a copy of SymbolData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymbolDataImplCopyWith<_$SymbolDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
