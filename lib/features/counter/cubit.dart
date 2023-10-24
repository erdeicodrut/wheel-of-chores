import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wheel_of_chores/features/counter/state.dart';

class CounterCubit extends HydratedCubit<CounterState> {
  CounterCubit() : super(const CounterState());

  void increment() => emit(state.copyWith(count: state.count + 1));

  void decrement() => emit(state.copyWith(count: state.count - 1));

  @override
  CounterState? fromJson(Map<String, dynamic> json) =>
      CounterState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(CounterState state) => state.toJson();
}
