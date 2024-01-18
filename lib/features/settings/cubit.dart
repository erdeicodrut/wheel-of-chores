import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wheel_of_chores/data/models/chore.dart';
import 'package:wheel_of_chores/features/settings/state.dart';
import 'package:wheel_of_chores/services/chore_service.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit({required this.choreService}) : super(const SettingsState());

  final ChoreService choreService;

  void increment() {
    choreService.createChore(Chore(name: 'test', date: DateTime.now()));

    emit(state.copyWith(count: state.count + 1));
  }

  void decrement() => emit(state.copyWith(count: state.count - 1));

  @override
  SettingsState? fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toJson();
}
