import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(const CounterInitial(count: 20));

  void increament() {
    emit(MyCounterState(count: state.count + 1));
  }

  void decrement() {
    emit(MyCounterState(count: state.count - 1));
  }
}
