import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wheel_of_chores/data/models/chore.dart';
import 'package:wheel_of_chores/features/add_chore/state.dart';
import 'package:wheel_of_chores/services/chore_service.dart';

class AddChoreCubit extends HydratedCubit<AddChoreState> {
  AddChoreCubit({required this.choreService}) : super(const AddChoreState());

  final ChoreService choreService;

  void increment() {
    choreService.createChore(Chore(name: 'test', date: DateTime.now()));

    emit(state.copyWith(count: state.count + 1));
  }

  void decrement() => emit(state.copyWith(count: state.count - 1));

  @override
  AddChoreState? fromJson(Map<String, dynamic> json) =>
      AddChoreState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AddChoreState state) => state.toJson();
}
