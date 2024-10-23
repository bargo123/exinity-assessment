// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTapIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTapIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTapIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTapIndex value) changeTapIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTapIndex value)? changeTapIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTapIndex value)? changeTapIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseEventCopyWith<BaseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseEventCopyWith<$Res> {
  factory $BaseEventCopyWith(BaseEvent value, $Res Function(BaseEvent) then) =
      _$BaseEventCopyWithImpl<$Res, BaseEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$BaseEventCopyWithImpl<$Res, $Val extends BaseEvent>
    implements $BaseEventCopyWith<$Res> {
  _$BaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeTapIndexImplCopyWith<$Res>
    implements $BaseEventCopyWith<$Res> {
  factory _$$ChangeTapIndexImplCopyWith(_$ChangeTapIndexImpl value,
          $Res Function(_$ChangeTapIndexImpl) then) =
      __$$ChangeTapIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeTapIndexImplCopyWithImpl<$Res>
    extends _$BaseEventCopyWithImpl<$Res, _$ChangeTapIndexImpl>
    implements _$$ChangeTapIndexImplCopyWith<$Res> {
  __$$ChangeTapIndexImplCopyWithImpl(
      _$ChangeTapIndexImpl _value, $Res Function(_$ChangeTapIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeTapIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTapIndexImpl implements _ChangeTapIndex {
  const _$ChangeTapIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'BaseEvent.changeTapIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTapIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of BaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTapIndexImplCopyWith<_$ChangeTapIndexImpl> get copyWith =>
      __$$ChangeTapIndexImplCopyWithImpl<_$ChangeTapIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTapIndex,
  }) {
    return changeTapIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTapIndex,
  }) {
    return changeTapIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTapIndex,
    required TResult orElse(),
  }) {
    if (changeTapIndex != null) {
      return changeTapIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTapIndex value) changeTapIndex,
  }) {
    return changeTapIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTapIndex value)? changeTapIndex,
  }) {
    return changeTapIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTapIndex value)? changeTapIndex,
    required TResult orElse(),
  }) {
    if (changeTapIndex != null) {
      return changeTapIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeTapIndex implements BaseEvent {
  const factory _ChangeTapIndex(final int index) = _$ChangeTapIndexImpl;

  @override
  int get index;

  /// Create a copy of BaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTapIndexImplCopyWith<_$ChangeTapIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BaseState {
  int get tapIndex => throw _privateConstructorUsedError;

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseStateCopyWith<BaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<$Res> {
  factory $BaseStateCopyWith(BaseState value, $Res Function(BaseState) then) =
      _$BaseStateCopyWithImpl<$Res, BaseState>;
  @useResult
  $Res call({int tapIndex});
}

/// @nodoc
class _$BaseStateCopyWithImpl<$Res, $Val extends BaseState>
    implements $BaseStateCopyWith<$Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tapIndex = null,
  }) {
    return _then(_value.copyWith(
      tapIndex: null == tapIndex
          ? _value.tapIndex
          : tapIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseStateImplCopyWith<$Res>
    implements $BaseStateCopyWith<$Res> {
  factory _$$BaseStateImplCopyWith(
          _$BaseStateImpl value, $Res Function(_$BaseStateImpl) then) =
      __$$BaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tapIndex});
}

/// @nodoc
class __$$BaseStateImplCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$BaseStateImpl>
    implements _$$BaseStateImplCopyWith<$Res> {
  __$$BaseStateImplCopyWithImpl(
      _$BaseStateImpl _value, $Res Function(_$BaseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tapIndex = null,
  }) {
    return _then(_$BaseStateImpl(
      tapIndex: null == tapIndex
          ? _value.tapIndex
          : tapIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BaseStateImpl implements _BaseState {
  const _$BaseStateImpl({this.tapIndex = 0});

  @override
  @JsonKey()
  final int tapIndex;

  @override
  String toString() {
    return 'BaseState(tapIndex: $tapIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStateImpl &&
            (identical(other.tapIndex, tapIndex) ||
                other.tapIndex == tapIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tapIndex);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseStateImplCopyWith<_$BaseStateImpl> get copyWith =>
      __$$BaseStateImplCopyWithImpl<_$BaseStateImpl>(this, _$identity);
}

abstract class _BaseState implements BaseState {
  const factory _BaseState({final int tapIndex}) = _$BaseStateImpl;

  @override
  int get tapIndex;

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseStateImplCopyWith<_$BaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
