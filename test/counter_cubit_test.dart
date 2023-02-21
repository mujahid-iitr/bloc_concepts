import 'package:bloc_concepts/counter_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    CounterCubit counterCubit = CounterCubit();

    setUp(() => () {
          counterCubit = CounterCubit();
        });

    tearDown(() => () {
          counterCubit.close();
        });

    test(
        "The initial state of CounterCubit should be  CounterState(counterValue:0",
        () {
      expect(counterCubit.state,
          CounterState(counterValue: 0, wasIncremented: false));
    });

    blocTest(
      'the cubit should emit a  CounterState(counterValue:1, wasIncremented:true) when cubit increment funcition is calleld',
      build: () => counterCubit,
      act: (cubit) => cubit.increment(),
      expect: () => [CounterState(counterValue: 1, wasIncremented: true)],
    );
  });
}
