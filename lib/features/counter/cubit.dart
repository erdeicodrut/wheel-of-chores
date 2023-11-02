import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wheel_of_chores/data/models/chore.dart';
import 'package:wheel_of_chores/features/counter/state.dart';
import 'package:wheel_of_chores/services/chore_service.dart';

class CounterCubit extends HydratedCubit<CounterState> {
  CounterCubit({required this.choreService}) : super(const CounterState());

  final ChoreService choreService;

  void increment() {
    choreService.createChore(Chore(name: 'test', date: DateTime.now()));

    emit(state.copyWith(count: state.count + 1));
  }

  void decrement() => emit(state.copyWith(count: state.count - 1));

  @override
  CounterState? fromJson(Map<String, dynamic> json) =>
      CounterState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(CounterState state) => state.toJson();
}
