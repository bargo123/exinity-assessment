import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_event.dart';
part 'base_state.dart';
part 'base_bloc.freezed.dart';

class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc() : super(const _BaseState()) {
    on<_ChangeTapIndex>((event, emit) {
      emit(state.copyWith(tapIndex: event.index));
    });
  }
}
