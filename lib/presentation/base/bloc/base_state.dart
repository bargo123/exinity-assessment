part of 'base_bloc.dart';

@freezed
class BaseState with _$BaseState {
  const factory BaseState({@Default(0) int tapIndex}) = _BaseState;
}
