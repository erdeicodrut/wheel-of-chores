import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wheel_of_chores/data/models/chore.dart';
import 'package:wheel_of_chores/features/chores_list/state.dart';
import 'package:wheel_of_chores/services/chore_service.dart';

class ChoresListCubit extends HydratedCubit<ChoresListState> {
  ChoresListCubit({required this.choreService}) : super(const ChoresListState());

  final ChoreService choreService;

  void increment() {
    choreService.createChore(Chore(name: 'test', date: DateTime.now()));

    emit(state.copyWith(count: state.count + 1));
  }

  void decrement() => emit(state.copyWith(count: state.count - 1));

  @override
  ChoresListState? fromJson(Map<String, dynamic> json) =>
      ChoresListState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(ChoresListState state) => state.toJson();
}
