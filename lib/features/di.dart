import 'package:wheel_of_chores/app/di.dart';
import 'package:wheel_of_chores/features/counter/counter.dart';
import 'package:wheel_of_chores/services/chore_service.dart';

void registerFeatures() {
  getIt.registerFactory(
    () => CounterCubit(
      choreService: getIt.get<ChoreService>(),
    ),
  );
}
