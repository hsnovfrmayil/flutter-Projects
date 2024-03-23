part of 'counter_bloc.dart';

abstract class CounterState {
  const CounterState({required this.count});
  final int count;
}

class CounterInitial extends CounterState {
  const CounterInitial({required int count}) : super(count: count);
}

class MyCounterState extends CounterState {
  const MyCounterState({required int count}) : super(count: count);
}
