import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wheel_of_chores/features/counter/counter.dart';
import 'package:wheel_of_chores/features/counter/state.dart';

void main() {
  group('CounterCubit', () {
    test('initial state is 0', () {
      expect(CounterCubit().state, equals(const CounterState()));
    });

    blocTest<CounterCubit, CounterState>(
      'emits [1] when increment is called',
      build: CounterCubit.new,
      act: (cubit) => cubit.increment(),
      expect: () => [equals(const CounterState(count: 1))],
    );

    blocTest<CounterCubit, CounterState>(
      'emits [-1] when decrement is called',
      build: CounterCubit.new,
      act: (cubit) => cubit.decrement(),
      expect: () => [equals(const CounterState(count: -1))],
    );
  });
}
