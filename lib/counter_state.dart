part of 'counter_cubit.dart';

class CounterState extends Equatable {
  int counterValue;
  bool wasIncremented = false;

  CounterState({
    required this.counterValue,
   required this.wasIncremented,
  });

  @override
  List<Object> get props => [counterValue, wasIncremented];
}
