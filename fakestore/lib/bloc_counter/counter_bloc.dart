import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(count: 50)) {
    on<IncreamentCounterEvent>((event, emit) {
      emit(MyCounterState(count: state.count + 1));
    });
    on<DecrementCounterEvent>((event, emit) {
      emit(MyCounterState(count: state.count - 1));
    });
  }
}
