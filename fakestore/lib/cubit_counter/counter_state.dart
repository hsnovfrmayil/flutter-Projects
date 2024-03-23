part of 'counter_cubit.dart';

abstract class CounterCubitState {
  const CounterCubitState({required this.count});
  final int count;
}

class CounterInitial extends CounterCubitState {
  const CounterInitial({required int count}) : super(count: count);
}

class MyCounterState extends CounterCubitState {
  const MyCounterState({required int count}) : super(count: count);
}
